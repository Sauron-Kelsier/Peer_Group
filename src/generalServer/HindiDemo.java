/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package generalServer;

import java.util.Locale;
import java.util.ResourceBundle;

/**
 *
 * @author rajat14
 */
public class HindiDemo 
{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        //import java.util.*;
        String language;
        String country;

        if (args.length != 2) 
        {
            language = "hi";
            country = "IN";
        } 
        else 
        {
            language = args[0];
            country = args[1];
        }

        Locale currentLocale;
        ResourceBundle messages;

        currentLocale = new Locale(language,country);

        messages = ResourceBundle.getBundle("generalServer.MessagesBundle", currentLocale);
        System.out.println(messages.getString("heading"));
        //System.out.println(messages.getString("inquiry"));
        //System.out.println(messages.getString("farewell"));
    }
}
