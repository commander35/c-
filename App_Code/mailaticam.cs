using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for mailaticam
/// </summary>
public class mailaticam
{
	public mailaticam()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static bool SendMail(string kime, string sekiz)
    {
        
        try
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();

            System.Net.NetworkCredential cred = new System.Net.NetworkCredential("hikmet.sep@depark.com", "2569302a");
            mail.To.Add(kime);
            mail.Subject = "Şifre değişikliği";
            string hak = "http://localhost:49513/deneme.aspx?a=1" + sekiz + "*456487892135641";
            string dene = "<a href='"+hak+"'>Tıklayınız</a>";
            mail.From = new System.Net.Mail.MailAddress("hikmet.sep@depark.com", "hikmet şep");
            mail.IsBodyHtml = true;
            mail.Body = dene;
            mail.IsBodyHtml = true;
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("mail.depark.com", Int32.Parse("587"));
            smtp.UseDefaultCredentials = false;
            
                smtp.EnableSsl = false;
            smtp.Credentials = cred;
            smtp.Send(mail);


        }
        catch (Exception ex)
        {
            Console.Write(ex.Message);
            return false;
        }
        return true;
    }
}