<%@ Page Title="Events" Language="C#" MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable dtE;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DropDownListTypeEvent.Items.Add("");
            DropDownListTypeEvent.Items.Add("Appels à projects");
            DropDownListTypeEvent.Items.Add("Bourses");
            DropDownListTypeEvent.Items.Add("Evénements");
            DropDownListTypeEvent.Items.Add("Annonces");
        }
    }
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        string st = "";
        if (FileUploadLogo.HasFile)
        {
            st = "images/studio/I-" + DateTime.Now.ToString("dd-MM-yyyy") + Path.GetExtension(FileUploadLogo.FileName);
        }
        c.MAJQueries($"insert into CH.[Events] values('{DropDownListTypeEvent.SelectedValue}', '{TextBoxEventTitle.Text}', '{TextBoxArticle.Text}', '/{st}')");
        FileUploadLogo.SaveAs(Server.MapPath(st));
        LabelErreur.Text = c.erreur;
        Response.Redirect("events.aspx");
    }
    protected void ButtonEdit_Click(object sender, EventArgs e)
    {
        string st = "";
        if (FileUploadLogo.HasFile)
        { st = "images/studio/I" + DateTime.Now.ToString("dd-MM-yyyy") + Path.GetExtension(FileUploadLogo.FileName); }
        c.MAJQueries($"update CH.[Events] set [Type] = '{DropDownListTypeEvent.SelectedValue}', [Event_Title] = '{TextBoxEventTitle.Text}', article = '{TextBoxArticle.Text}', Event_Logo = '/{st}' where Num_Event = {TextBoxNumEvent.Text}");
        LabelErreur.Text = c.erreur;
        Response.Redirect("events.aspx");
    }
    protected void ButtonDelete_Click(object sender, EventArgs e)
    {
        c.MAJQueries($"delete from CH.[Events] where Num_Event = {TextBoxNumEvent.Text}");
        LabelErreur.Text = c.erreur;
        Response.Redirect("events.aspx");
    }
    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        dtE = new DataTable();
        dtE = c.SelectQueries($"Select * From CH.[Events] Where Num_Event = {TextBoxNumEvent.Text}");
        DropDownListTypeEvent.Text = dtE.Rows[0][1].ToString();
        TextBoxEventTitle.Text = dtE.Rows[0][2].ToString();
        TextBoxArticle.Text = dtE.Rows[0][3].ToString();
        LabelErreur.Text = c.erreur;
        Response.Redirect("events.aspx");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/style-editor.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_" runat="server">
    <main>
        <div class="container">
            <table>
                <tr>
                    <th>Event Number</th>
                    <td><asp:TextBox ID="TextBoxNumEvent" runat="server" /></td>
                </tr>
                <tr>
                    <th>Type Event</th>
                    <td><asp:DropDownList ID="DropDownListTypeEvent" runat="server" /></td>
                </tr>
                <tr>
                    <th>Event Title</th>
                    <td><asp:TextBox ID="TextBoxEventTitle" runat="server" /></td>
                </tr>
                <tr>
                    <th>Logo</th>
                    <td><asp:FileUpload ID="FileUploadLogo" runat="server" /></td>
                </tr>
                <tr>
                    <th>article</th>
                    <td rowspan="2"><asp:TextBox ID="TextBoxArticle" runat="server" TextMode="MultiLine" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="LabelErreur" runat="server" style="text-align: center; color: red" /></td>
                </tr>
            </table>
            <div class="verticale"></div>
            <div class="buttons">
                <asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" />
                <asp:Button ID="ButtonEdit" runat="server" Text="Edit" OnClick="ButtonEdit_Click" />
                <asp:Button ID="ButtonDelete" runat="server" Text="Delete" OnClick="ButtonDelete_Click" />
                <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" />
                <asp:Button ID="ButtonValidate" runat="server" Text="Validate" />
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" />
            </div>
        </div>
    </main>
</asp:Content>
