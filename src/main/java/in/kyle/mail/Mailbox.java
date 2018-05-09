package in.kyle.mail;

import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Created by Kyle on 11/3/2015.
 */
public class Mailbox {
    
    private static final String url = "http://api.guerrillamail.com/ajax.php";

    public String getSessionIdCookie() {
        return sessionIdCookie;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public AtomicBoolean getActive() {
        return active;
    }

    private String sessionIdCookie;

    private String emailAddress;

    private final AtomicBoolean active;
    
    private boolean firstCheck;
    
    private EmailListener emailListener;
    
    public Mailbox(long checkInterval, TimeUnit timeUnit) throws IOException {
        emailAddress = initEmailAddress();
        active = new AtomicBoolean(true);
        firstCheck = true;
        
        Mailbox instance = this;
        new Thread(() -> {
            while (active.get()) {
                try {
                    synchronized (instance) {
                        try {
                            checkMail();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                try {
                    Thread.sleep(timeUnit.toMillis(checkInterval));
                } catch (InterruptedException ignored) {
                }
            }
        }).start();
    }
    
    public synchronized void setEmailListener(EmailListener emailListener) {
        this.emailListener = emailListener;
    }
    
    public static void main(String[] args) throws IOException {
        Mailbox mailbox = new Mailbox(10, TimeUnit.SECONDS);
        mailbox.setEmailAddress("asd");
        mailbox.setEmailListener((event) -> {
            System.out.println("Got email: " + event.getEmail().toString().replace("\n", "\\n"));
        });
    }
    
    public String initEmailAddress() throws IOException {
        try {
            String url = function("get_email_address");
            JSONObject jsonObject = sendRequest(url);
            return jsonObject.getString("email_addr");
        }catch(JSONException e) {
            throw new IOException(e);
        }
    }
    
    public void checkMail() throws IOException {
        try {
            String url = function("check_email") + "&seq=0";
            JSONObject jsonObject = sendRequest(url);
            JSONArray list = jsonObject.getJSONArray("list");

            if (firstCheck) {
                firstCheck = false;
            } else {
                for (int i = 0; i < list.length(); i++) {

                    JSONObject email = list.getJSONObject(i);

                    int id = email.getInt("mail_id");
                    String from = email.getString("mail_from");
                    String subject = email.getString("mail_subject");
                    String content = email.getString("mail_excerpt");

                    Email received = new Email(id, from, subject, content);

                    EmailReceivedEvent emailReceivedEvent = new EmailReceivedEvent(received);

                    synchronized (this) {
                        emailListener.emailReceived(emailReceivedEvent);
                    }
                }
            }
        }catch(JSONException e) {
            throw new IOException(e);
        }
    }
    
    public String setEmailAddress(String user) throws IOException {
        try {
            String url = function("set_email_user") + "&email_user=" + user;
            JSONObject jsonObject = sendRequest(url);
            emailAddress = jsonObject.getString("email_addr");
            return emailAddress;
        }catch(JSONException e) {
            throw new IOException(e);
        }
    }
    
    private JSONObject sendRequest(String url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(url).openConnection();
        
        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
        
        if (sessionIdCookie != null) {
            httpURLConnection.setRequestProperty("Cookie", "PHPSESSID=" + sessionIdCookie);
        } else {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            if (headerFields.containsKey("Set-Cookie")) {
                for (String cookie : headerFields.get("Set-Cookie")) {
                    if (cookie.startsWith("PHPSESSID")) {
                        sessionIdCookie = cookie.substring(cookie.indexOf("=") + 1).trim();
                        break;
                    }
                }
            }
        }
        
        StringWriter response = new StringWriter();
        IOUtils.copy(httpURLConnection.getInputStream(), response);
        try {
            return new JSONObject(response.toString());
        }catch(JSONException e) {
            throw new IOException(e);
        }
    }
    
    private String function(String function) {
        return url + "?f=" + function;
    }
}
