<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable dtE, dtGV;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dtE = c.SelectQueries("Select * From Dev.[Navbar]");
            DropDownListNavbar.DataSource = dtE;
            DropDownListNavbar.DataValueField = "Title";
            DropDownListNavbar.DataBind();
            DropDownListNavbar.Items.Insert(0, new ListItem("-", "0"));
            s = c.erreur;
        }
    }
    protected void DropDownListNavbar_SelectedIndexChanged(object sender, EventArgs e)
    {
        dtGV = new DataTable();
        dtGV = c.SelectQueries($"Select Links From Dev.[Sublinks] where Menu = '{DropDownListNavbar.SelectedValue}'");
        DropDownListDeleteSublink.DataSource = dtGV;
        DropDownListDeleteSublink.DataValueField = "Links";
        DropDownListDeleteSublink.DataBind();
        DropDownListEditLink.DataSource = dtGV;
        DropDownListEditLink.DataValueField = "Links";
        DropDownListEditLink.DataBind();
        GridViewSublikns.DataSource = dtGV;
        GridViewSublikns.DataBind();
    }
    protected void ButtonAddSublink_Click(object sender, EventArgs e)
    {
        c.MAJQueries($"insert into Dev.[Sublinks] values ('{DropDownListNavbar.SelectedValue}', '{TextBoxAddSublink.Text}', 'https://{TextBoxLink.Text}')");
        Response.Redirect("development.aspx");
    }
    protected void ButtonDeleteSublink_Click(object sender, EventArgs e)
    {
        c.MAJQueries($"Delete From Dev.[Sublinks] where Menu = '{DropDownListNavbar.SelectedValue}' and Links = '{DropDownListDeleteSublink.SelectedValue}'");
        Response.Redirect("development.aspx");
    }

    protected void ButtonEditLink_Click(object sender, EventArgs e)
    {
        c.MAJQueries($"Update Dev.[Sublinks] set LinkBelow = 'https://{TextBoxEditLink.Text}' where Menu = '{DropDownListNavbar.SelectedValue}' and Links = '{DropDownListDeleteSublink.SelectedValue}'");
        Response.Redirect("development.aspx");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/style-development.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_" runat="server">
    <main>
        <div class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="select">
                <h2>Navbar</h2>
                <asp:DropDownList ID="DropDownListNavbar" runat="server" OnSelectedIndexChanged="DropDownListNavbar_SelectedIndexChanged" AutoPostBack="True" />
                <strong><%=s %></strong>
            </div>
            <hr />
            <div class="edit">
                <div class="row">
                    <button data-i="add">Add</button>
                    <button data-i="edit">Edit</button>
                    <button data-i="delete">Delete</button>
                </div>
                <div class="content">
                    <section id="add">
                        <table style="width: 100%;">
                            <tr>
                                <td>Title</td>
                                <td><asp:TextBox ID="TextBoxAddSublink" runat="server" /></td>
                            </tr>
                            <tr>
                                <td>Link Below</td>
                                <td><asp:TextBox ID="TextBoxLink" runat="server" placeholder="https://" /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="ButtonAddSublink" runat="server" Text="Add" OnClick="ButtonAddSublink_Click" /></td>
                            </tr>
                        </table>
                    </section>
                    <section id="edit">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td>Title</td>
                                <td>
                                    <asp:DropDownList ID="DropDownListEditLink" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td>Link</td>
                                <td>
                                    <asp:TextBox ID="TextBoxEditLink" placeholder="https://" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="ButtonEditLink" runat="server" Text="Validate" OnClick="ButtonEditLink_Click" /></td>
                            </tr>
                        </table>
                        </ContentTemplate>
                        <Triggers>
                           <asp:AsyncPostBackTrigger ControlID="DropDownListNavbar" EventName="SelectedIndexChanged" />
                        </Triggers>
                        </asp:UpdatePanel>
                    </section>
                    <section id="delete">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td>Title</td>
                                <td>
                                    <asp:DropDownList ID="DropDownListDeleteSublink" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="ButtonDeleteSublink" runat="server" Text="Validate" OnClick="ButtonDeleteSublink_Click" /></td>
                            </tr>

                        </table>
                        </ContentTemplate>
                        <Triggers>
                           <asp:AsyncPostBackTrigger ControlID="DropDownListNavbar" EventName="SelectedIndexChanged" />
                        </Triggers>
                        </asp:UpdatePanel>
                    </section>
                </div>
            </div>
            <hr />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridViewSublikns" runat="server" HorizontalAlign="Center" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownListNavbar" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
    </main>
    <script>
        const bs = document.querySelectorAll('main .container .edit .row button'),
              sc = document.querySelectorAll('main .container .edit .content section');
        bs.forEach(function (el) {
            el.addEventListener('click', function (e) {
                e.preventDefault();
                bs.forEach(function (e) {
                    e.classList.remove('selected');
                });
                sc.forEach(function (e) {
                    e.classList.remove('active');
                });
                el.classList.add('selected');
                document.getElementById(el.getAttribute('data-i')).classList.add('active');
            });
        });
    </script>
</asp:Content>