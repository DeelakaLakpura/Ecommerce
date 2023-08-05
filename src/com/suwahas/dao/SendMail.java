package com.suwahas.dao;


import org.simplejavamail.api.email.Email;
import org.simplejavamail.email.EmailBuilder;
import org.simplejavamail.mailer.MailerBuilder;

import javax.mail.internet.MimeMessage;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Properties;


public class SendMail  {
    public static void send(String emailAddress) {




        LocalDateTime rightNow = LocalDateTime.now();

        final String sender = "emart492@outlook.com";
        final String urpass = "#Emart1234";

        var username = "emart492@outlook.com";
        var password = "#Emart1234";
        var host = "smtp-mail.outlook.com";
        var port = 587;

        Email email = EmailBuilder.startingBlank()
                .from("Admin", "emart492@outlook.com")
                .to("Jane Doe", emailAddress)
                .withSubject("Welcome to E-mart - Your One-Stop Shop for Quality Products!")
                .withHTMLText("" +
                        "<p> We are delighted to welcome you to E-mart, your ultimate destination for a seamless shopping experience. As a new member of our growing community, we want to express our heartfelt gratitude for choosing us as your preferred online supermarket for all your product needs.\r\n"
                        + "\r\n"
                        + "At E-mart, we strive to offer you an extensive range of top-quality products at unbeatable prices. Whether you're looking for fresh groceries, household essentials, electronics, fashion, or anything in between, we've got you covered with a vast selection that caters to all your requirements.  </p>"
                        
                       )
                .buildEmail();

        MailerBuilder
                .withSMTPServer(host, port, username, password)
                .buildMailer()
                .sendMail(email);

        System.out.println("Email sent successfully");
    }
    }
