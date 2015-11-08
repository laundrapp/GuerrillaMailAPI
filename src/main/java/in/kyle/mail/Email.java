package in.kyle.mail;

import lombok.Data;

/**
 * Created by Kyle on 11/4/2015.
 */
@Data
public class Email {
    
    private final int id;
    private final String from;
    private final String subject;
    private final String content;
    
}
