package in.kyle.mail;


import java.util.Objects;

/**
 * Created by Kyle on 11/4/2015.
 */
public class Email {
    
    private final int id;
    private final String from;
    private final String subject;
    private final String content;

    public Email(int id, String from, String subject, String content) {
        this.id = id;
        this.from = from;
        this.subject = subject;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public String getFrom() {
        return from;
    }

    public String getSubject() {
        return subject;
    }

    public String getContent() {
        return content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Email email = (Email) o;
        return id == email.id &&
                Objects.equals(from, email.from) &&
                Objects.equals(subject, email.subject) &&
                Objects.equals(content, email.content);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, from, subject, content);
    }
}
