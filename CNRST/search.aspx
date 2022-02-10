<%@ Page Title="Recherche" Language="C#" MasterPageFile="~/Sidebar.Master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable dtS;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["search"].ToString() == "" || Session["search"] == null) {
            Response.Redirect("events-list.aspx");
        } else {
            dtS = new DataTable();
            // After Installing Full Index Search
            // Catalog : MainFullTextIndex
            dtS = c.SelectQueries($"Select CH.[Events].* From CH.[Events] Where Contains(CH.[Events].*, '\"*{Session["search"]}*\"') Order by Num_Event Desc");
        }
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <p>Searching for <strong><%=Session["search"] %>...</strong></p>
    <% for (int i = 0; i < dtS.Rows.Count; i++) { %>
        <a class="event"><%=dtS.Rows[i][2].ToString() %></a>
        <div hidden style="display: none;">
            <span class="type"><%=dtS.Rows[i][1].ToString() %></span>
            <span class="article"><%=dtS.Rows[i][3].ToString() %></span>
            <span class="img"><%=dtS.Rows[i][4].ToString() %></span>
        </div>
    <% } %>
</asp:Content>