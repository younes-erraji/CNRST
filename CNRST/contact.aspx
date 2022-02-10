<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<script runat="server">
    protected void ButtonSendMail_Click(object sender, EventArgs e) {
        MailMessage mail = new MailMessage(); 
        mail.To.Add(email.Value.Trim()); 
        mail.To.Add("Secondry@gmail.com");
        mail.From = new MailAddress("younes.erraji16@gmail.com");
        mail.Subject = tele.Value;
        mail.Body = emailMessage.Value;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        // smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.UseDefaultCredentials = false;
        smtp.EnableSsl = true;
        smtp.Credentials = new System.Net.NetworkCredential("younes.erraji16@gmail.com", "123456*+");
        // smtp.Port = 587;
        //Or your Smtp Email ID and Password
        smtp.Send(mail);
        Response.Redirect("contact.aspx");
    }
</script>
<asp:Content ID="ContentContactHead" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/style-contact.css" />
</asp:Content>
<asp:Content ID="ContentContactBody" ContentPlaceHolderID="ContentPlaceHolder_" runat="server">
    <main>
      <div class="contact">
        <div class="container">
          <div class="info">
            <h2 class="header">Contact</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos iusto repudiandae harum placeat sequi, illo incidunt tempora nemo modi alias. Esse quaerat consectetur reprehenderit dolorum nisi blanditiis, dolorem illo ipsa perspiciatis facere officiis quisquam magnam odio eaque eos sapiente nemo repudiandae error eius dicta.</p>
            <p><img src="../icons/chat.svg">contact@cnrst.com</p>
            <p><img src="../icons/phone.svg">(+212) 05 37.56.98.00</p>
            <p><img src="../icons/phone.svg">(+212) 05 37.56.98.34</p>
          </div>
          <div class="mform">
            <p>Envoyer un e-mail. Tous les champs marqués d'un astérisque * sont obligatoires.</p>
            <label for="nom">Nom </label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNom" runat="server" ErrorMessage="*" ControlToValidate="name" ForeColor="Red" />
            <input type="text" runat="server" id="name" name="name" />
            <label for="email">Email Adresse </label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*" ControlToValidate="email" ForeColor="Red" />
            <input type="email" runat="server" id="email" />
            <label for="tele">Téle </label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTele" runat="server" ErrorMessage="*" ControlToValidate="tele" ForeColor="Red" />
            <input type="text" runat="server" id="tele" name="tele" />
            <label for="emailMessage">Message </label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMessage" runat="server" ErrorMessage="*" ControlToValidate="emailMessage" ForeColor="Red" />
            <textarea id="emailMessage" runat="server"></textarea>
            <div class="check">
              <input type="checkbox" runat="server" id="check" />
              <label for="check">Envoyer une copie à votre adresse</label>
            </div>
            <asp:Button ID="ButtonSendMail" runat="server" Text="Envoyes" CssClass="submit button" OnClick="ButtonSendMail_Click" />
          </div>
        </div>
      </div>
    </main>
</asp:Content>
