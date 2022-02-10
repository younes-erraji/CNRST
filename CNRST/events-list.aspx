<%@ Page Title="liste des evenements" Language="C#" MasterPageFile="~/Sidebar.Master" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable dtE = new DataTable();
    protected void Page_Load(object sender, EventArgs e) {
        dtE = c.SelectQueries("Select CH.[Events].* From CH.[Events] Order by Num_Event Desc");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <% for (int i = 0; i < dtE.Rows.Count; i++) { %>
        <a class="event title"><%=dtE.Rows[i][2].ToString() %></a>
        <div hidden style="display: none;">
            <span class="type"><%=dtE.Rows[i][1].ToString() %></span>
            <span class="article"><%=dtE.Rows[i][3].ToString() %></span>
            <span class="img"><%=dtE.Rows[i][4].ToString() %></span>
        </div>
    <% } %>
</asp:Content>
