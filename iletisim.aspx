<%@ Page Title="Yüzey Ajans | Mezuniyet Yıllıkları | İletişim" Language="C#" MasterPageFile="~/_main.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" Runat="Server">

<div id="content">
    
        <div class="inner">  
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3059.7563662827984!2d32.84651631611015!3d39.92446809335276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14d34efe1265db8f%3A0xdb340a448fd41705!2sKorkutreis%2C%20Gazi%20Mustafa%20Kemal%20Blv.%20No%3A36%2C%2006430%20%C3%87ankaya%2FAnkara!5e0!3m2!1sen!2str!4v1640715975842!5m2!1sen!2str"  width="970" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            <div style="clear: both;"></div>            
            <br />
			<div class="text">
                
				<p>
					Gönderdiğiniz mesajlar 24 saat içinde yanıtlanacaktır. Size geri dönüş yapabilmemiz için lütfen sık kontrol ettiğiniz e-posta adresinizi ve GSM numaranızı yazınız.
				</p>

				<div class="form-contact">
					<ol class="cf-ol">
						<li>
							<label for="name"><span>Ad</span></label>
                            <asp:TextBox ID="txt_ad" runat="server" CssClass="required"></asp:TextBox>
						</li>
						
						<li>
							<label for="email"><span>E-Posta</span></label>
							<asp:TextBox ID="txt_mail" runat="server" CssClass="required"></asp:TextBox>
						</li>
						
						<li>
							<label for="subject"><span>GSM</span></label>
							<asp:TextBox ID="txt_gsm" runat="server" CssClass="required"></asp:TextBox>
						</li>
						
						<li>
							<label for="message"><span>Mesajınız</span></label>
                            <asp:TextBox ID="txt_mesaj" runat="server" TextMode="MultiLine" Columns="30" Rows="8" CssClass="area"></asp:TextBox>
						</li>
					</ol>
					
					
					
					<p class="cf-sb">
						
                        <asp:Button ID="btn_gonder" runat="server" CssClass="sendbutton" Text="Gönder" 
                            onclick="btn_gonder_Click" />
					</p>
				</div>
			</div>
			
			            
            
            <div class="sidebar">     
    			
				<div class="widget">
	                <h2>Telefon</h2>
	                
	                <ul>                           
	                    <li id="phone-icon">+90 312 419 99 80 </li>                
	                </ul>
	            </div>                        
	                
	            <div class="clear"></div>
	                                          
	           
	            
	            <div class="widget">
                    <h2>Adres</h2>
                    <address>
                        GMK Bulvarı 36/6 Kızılay<br />
                        Çankaya  / Ankara                  
					</address>     
                </div>

				          
    		</div>            
            
                        
        </div>              
    
    	<div class="clear"></div>
    
    </div>

</asp:Content>

