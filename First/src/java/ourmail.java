/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ourmail {
	
    public  static  String sendmail(String to,String subject,String text)
    {
                   try
          {
          //Properties props = new Properties();
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.port", "587"); //TLS Port
            props.put("mail.smtp.auth", "true"); //enable authentication
            props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

                //create Authenticator object to pass in Session.getInstance argument
            Authenticator auth = new Authenticator() {
                //override the getPasswordAuthentication method
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("hostelthapar@gmail.com","801731008");
                }
            };
		/*props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getInstance(props,
			new javax.mail.Authenticator() {
                @Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("just.officialinfo@gmail.com","jatin$25");
				}
			});*/
Session session = Session.getInstance(props, auth);
		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("hostelthapar@gmail.com"));
                        
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText("Hello, "+text);

			Transport.send(message);
System.out.println("Its Done");
             

			return "done";
                         

		} catch (Exception e) {
		           return e.toString();
		}
        }catch(Exception e)
          {
            return e.toString();
        }
        }
}