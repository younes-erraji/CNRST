<%@ Page Title="Evenement" Language="C#" MasterPageFile="~/Sidebar.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <h2></h2>
    <strong></strong>
    <img src="" />
    <p></p>
    <script>
        document.querySelector('.main-content h2').innerHTML = localStorage.ETitle;
        document.querySelector('.main-content strong').innerHTML = localStorage.EType;
        document.querySelector('.main-content img').src = localStorage.EImage;
        document.querySelector('.main-content p').innerHTML = localStorage.EArticle;
    </script>
</asp:Content>