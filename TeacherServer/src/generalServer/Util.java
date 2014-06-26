/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package generalServer;

import java.util.Locale;
import java.util.ResourceBundle;

/**
 *
 * @author sukalyan14
 */
public class Util 
{
    public static String language;
    public static String country;
    public static String fontURL;
    
    public static ResourceBundle messages;
    public static Locale currentLocale;
            
    
    
    
  
    public static void imp(String l,String c)
    {
        language=new String(l);
        country=new String(c);
        currentLocale=new Locale(language,country);
        messages=ResourceBundle.getBundle("generalServer.MessagesBundle",currentLocale);
                
        fontURL="file:///users/extusr/sukalyan14/eklavya/K010.ttf";
        
    }
}
