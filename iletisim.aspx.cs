using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_gonder_Click(object sender, EventArgs e)
    {
        if (txt_ad.Text == "" || txt_mail.Text == "" || txt_gsm.Text == "" || txt_mesaj.Text == "")
        {
            Response.Write(@"<script language='javascript'>alert('Lütfen tüm alanları doldurun.');</script>");
            return;
        }

        try
        {
            string fromAddress = "info@iltera.com";
            string toAddress = "yuzeyajans@gmail.com";
            string subj = "İletişim Kutusu (www.yuzeyajans.com)";
            string mbody = "Ad Soyad: " + txt_ad.Text + " <br/>"
                + "E-posta: " + txt_mail.Text + " <br/> "
                + "Telefon: " + txt_gsm.Text + " <br/> "
                + "Mesaj: " + txt_mesaj.Text;

            MailMessage mm = new MailMessage(fromAddress, toAddress, subj, mbody);
            mm.IsBodyHtml = true;

            System.Net.NetworkCredential xferAccount = new System.Net.NetworkCredential("info@iltera.com", "105957");

            SmtpClient xferClient = new SmtpClient("s2smtpout.secureserver.net", 25);

            xferClient.EnableSsl = false;
            xferClient.UseDefaultCredentials = false;

            xferClient.Send(mm);
            Response.Write(@"<script language='javascript'>alert('Mesajınız alındı. 24 saat içinde dönüş yapacağız.');</script>");
            txt_ad.Text = ""; txt_mail.Text = ""; txt_gsm.Text = ""; txt_mesaj.Text = "";
        }
        catch
        {
            Response.Write(@"<script language='javascript'>alert('Bir hata oluştu!');</script>");
        }
    }
}