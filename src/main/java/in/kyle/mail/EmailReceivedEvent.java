package in.kyle.mail;


import java.util.Objects;

/**
 * Created by Kyle on 11/4/2015.
 */
public class EmailReceivedEvent {
    
    private final Email email;

    public EmailReceivedEvent(Email email) {
        this.email = email;
    }

    public Email getEmail() {
        return email;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EmailReceivedEvent that = (EmailReceivedEvent) o;
        return Objects.equals(email, that.email);
    }

    @Override
    public int hashCode() {

        return Objects.hash(email);
    }
}
