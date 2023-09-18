package mail;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {

   private final String from = "zpdlwm33@gmail.com";
   private final String password = "imkbzclcpjzebgip";
   private String to;
   private String subject;
   private String bodyText;

   public MailSender() {
   }

   public void setTo(String to) {
      this.to = to;
   }
   
   public void setSubject(String subject) {
      this.subject = subject;
   }
   
   public void setBodyText(String bodyText) {
      this.bodyText = bodyText;
   }

   public void sendEmail() {
      // Set mail properties
      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", "smtp.gmail.com"); // SMTP host for Gmail
      props.put("mail.smtp.port", "587"); // SMTP port for Gmail
      props.put("mail.smtp.ssl.protocols", "TLSv1.2");

      // Create a session with authentication
      Session session = Session.getInstance(props, new Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
         }
      });

      try {
         // Create a message
         Message message = new MimeMessage(session);
         message.setFrom(new InternetAddress(from));
         message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
         message.setSubject(subject);
         message.setText(bodyText);

         // Send the message
         Transport.send(message);

         System.out.println("Email sent successfully.");
      } catch (MessagingException e) {
         e.printStackTrace();
      }
   }

   public static void main(String[] args) {
      String to = "silver8697@naver.com";
      String subject = "비밀번호 찾기";
      String bodyText = "비밀번호: 123456"; // 여기에 실제 비밀번호 값을 설정해야 합니다.

      MailSender mailSender = new MailSender();
      mailSender.setTo(to);
      mailSender.setSubject(subject);
      mailSender.setBodyText(bodyText);
      mailSender.sendEmail();
   }
}
