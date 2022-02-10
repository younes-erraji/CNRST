<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable devs;
    protected void Page_Load(object sender, EventArgs e)
    {
        devs = new DataTable();
        devs = c.SelectQueries("Select * From Dev.Developper Order By NumDev Desc");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/style-about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_" runat="server">
    <main>
        <div class="container">
            <h2>Developers</h2>
            <div class="front-end">
                <div class="developer">
                    <h3 class="name"><%=devs.Rows[0][1].ToString() %></h3>
                    <h4 class="name"><%=devs.Rows[0][2].ToString() %></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.</p>
                    <div class="social">
                        <a href="#"><img src="icons/facebook.svg" /></a>
                        <a href="#"><img src="icons/linkedin.svg" /></a>
                        <a href="#" target="_blank"><img src="icons/github.svg" /></a>
                        <a href="<%=devs.Rows[0][6].ToString() %>" target="_blank"><img src="icons/cv.svg" /></a>
                    </div>
                </div>
                <div class="picture"><img src="<%=devs.Rows[0][7].ToString()  %>"/></div>
            </div>
            <div class="back-end">
                <div class="picture"><img src="<%=devs.Rows[1][7].ToString() %>"/></div>
                <div class="developer">
                    <h3 class="name"><%=devs.Rows[1][1].ToString() %></h3>
                    <h4 class="name"><%=devs.Rows[1][2].ToString() %></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.</p>
                    <div class="social">
                        <a href="#"><img src="icons/facebook.svg" /></a>
                        <a href="#"><img src="icons/linkedin.svg" /></a>
                        <a href="#"><img src="icons/github.svg" /></a>
                        <a href="<%=devs.Rows[1][6].ToString() %>"><img src="icons/cv.svg" /></a>
                    </div>
                </div>
            </div>
            <div class="front-end">
                <div class="developer">
                    <h3 class="name"><%=devs.Rows[2][1].ToString() %></h3>
                    <h4 class="name"><%=devs.Rows[2][2].ToString() %></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper.</p>
                    <div class="social">
                        <a href="#"><img src="icons/facebook.svg" /></a>
                        <a href="#"><img src="icons/linkedin.svg" /></a>
                        <a href="#"><img src="icons/github.svg" /></a>
                        <a href="<%=devs.Rows[2][6].ToString() %>"><img src="icons/cv.svg" /></a>
                    </div>
                </div>
                <div class="picture"><img src="<%=devs.Rows[2][7].ToString() %>"/></div>
            </div>
        </div>
    </main>
</asp:Content>
