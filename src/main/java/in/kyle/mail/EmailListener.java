package in.kyle.mail;

/**
 * Created by Kyle on 11/4/2015.
 */
@FunctionalInterface
public interface EmailListener {
    void emailReceived(EmailReceivedEvent event);
}
