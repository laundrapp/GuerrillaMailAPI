package in.kyle.mail;

import lombok.Data;

/**
 * Created by Kyle on 11/4/2015.
 */
@Data
public class EmailReceivedEvent {
    
    private final Email email;
    
}
