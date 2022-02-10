<%@ Page Title="Accueil" Language="C#" MasterPageFile="~/Master.Master" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="CNRST.classes" %>
<script runat="server">
    connexion c = new connexion();
    DataTable dt, dtAppels, dtBourses, dtAnnonces, dtEvenements, photos;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            dtAppels = new DataTable();
            dtBourses = new DataTable();
            dtAnnonces = new DataTable();
            dtEvenements = new DataTable();
            dt = new DataTable();
            try
            {
                dtAppels = c.SelectQueries("Select CH.[Events].* From CH.[Events] where [Type] = 'Appels à projects' Order by Num_Event Desc");
                dtBourses = c.SelectQueries("Select CH.[Events].* From CH.[Events] where [Type] = 'Bourses' Order by Num_Event Desc");
                dtAnnonces = c.SelectQueries("Select CH.[Events].* From CH.[Events] where [Type] = 'Annonces' Order by Num_Event Desc");
                dtEvenements = c.SelectQueries("Select CH.[Events].* From CH.[Events] where [Type] = 'Evénements' Order by Num_Event Desc");
                dt = c.SelectQueries("Select CH.[Events].* From CH.[Events] Order by Num_Event Desc");
                photos = c.SelectQueries("Select * From CH.Pictures Order BY Num_Picture DESC");
            } catch (Exception ex) { }
        }
    }
</script>
<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styles/style-accueil.css" />
</asp:Content>
<asp:Content ID="ContentBody" ContentPlaceHolderID="ContentPlaceHolder_" runat="server">
    <main>
        <section>
            <div class="container">
                <h2 class="header">À la une</h2>
                <div class="primary">
                    <section>
                        <img src="<%=dt.Rows[0][4].ToString() %>">
                        <a class="event"><%=dt.Rows[0][2].ToString() %></a>
                        <div hidden style="display: none;">
                            <span class="type"><%=dt.Rows[0][1].ToString() %></span>
                            <span class="article"><%=dt.Rows[0][3].ToString() %></span>
                            <span class="img"><%=dt.Rows[0][4].ToString() %></span>
                        </div>
                    </section>
                    <article>
                        <p><%=dt.Rows[0][3].ToString() %></p>
                    </article>
                </div>
                <div>
                    <img src="<%=dt.Rows[1][4].ToString() %>">
                    <article>
                        <a class="event"><%=dt.Rows[1][2].ToString() %></a>
                        <div hidden style="display: none;">
                            <span class="type"><%=dt.Rows[1][1].ToString() %></span>
                            <span class="article"><%=dt.Rows[1][3].ToString() %></span>
                            <span class="img"><%=dt.Rows[1][4].ToString() %></span>
                        </div>
                    </article>
                </div>
                <div>
                    <img src="<%=dt.Rows[2][4].ToString() %>">
                    <article>
                        <a class="event"><%=dt.Rows[2][2].ToString() %></a>
                        <div hidden style="display: none;">
                            <span class="type"><%=dt.Rows[2][1].ToString() %></span>
                            <span class="article"><%=dt.Rows[2][3].ToString() %></span>
                            <span class="img"><%=dt.Rows[2][4].ToString() %></span>
                        </div>
                    </article>
                </div>
                <div>
                    <img src="<%=dt.Rows[3][4].ToString() %>">
                    <article>
                        <a class="event"><%=dt.Rows[3][2].ToString() %></a>
                        <div hidden style="display: none;">
                            <span class="type"><%=dt.Rows[3][1].ToString() %></span>
                            <span class="article"><%=dt.Rows[3][3].ToString() %></span>
                            <span class="img"><%=dt.Rows[3][4].ToString() %></span>
                        </div>
                    </article>
                </div>
                <div>
                    <img src="<%=dt.Rows[4][4].ToString() %>">
                    <article>
                        <a class="event"><%=dt.Rows[4][2].ToString() %></a>
                        <div hidden style="display: none;">
                            <span class="type"><%=dt.Rows[4][1].ToString() %></span>
                            <span class="article"><%=dt.Rows[4][3].ToString() %></span>
                            <span class="img"><%=dt.Rows[1][4].ToString() %></span>
                        </div>
                    </article>
                </div>
            </div>
        </section>
        <div class="articles">
            <div class="container">
                <div id="appels">
                    <h3><strong>Appels à projects</strong></h3>
                    <% if (dtAppels.Rows.Count > 4) {
                            for (int i = 0; i < 4; i++) { %>
                                <article>
                                    <h4>
                                        <a class="event"><%=dtAppels.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtAppels.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtAppels.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtAppels.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtAppels.Rows[i][3].ToString() %></p>
                                </article>
                            <%}
                       } else {
                            for (int i = 0; i < dtAppels.Rows.Count; i++)
                            { %>
                                <article>
                                    <h4>
                                        <a class="event"><%=dtAppels.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtAppels.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtAppels.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtAppels.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtAppels.Rows[i][3].ToString() %></p>
                                </article>
                            <%}
                       } %>
                </div>
                <div id="bourses">
                    <h3><strong>Bourses</strong></h3>
                    <% if (dtBourses.Rows.Count > 4) {
                            for (int i = 0; i < 4; i++) { %>
                                <article>
                                    <h4>
                                        <a class="event"><%=dtBourses.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtBourses.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtBourses.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtBourses.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtBourses.Rows[i][3].ToString() %></p>
                                </article>
                            <%}
                       } else {
                           for (int i = 0; i < dtBourses.Rows.Count; i++) { %>
                               <article>
                                    <h4>
                                        <a class="event"><%=dtBourses.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtBourses.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtBourses.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtBourses.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtBourses.Rows[i][3].ToString() %></p>
                               </article>
                           <%}
                       } %>
                </div>
                <div id="evenements">
                    <h3><strong>Evénements</strong></h3>
                    <% if (dtEvenements.Rows.Count > 4) {
                            for (int i = 0; i < 4; i++) { %>
                                <article>
                                    <h4>
                                        <a class="event"><%=dtEvenements.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtEvenements.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtEvenements.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtEvenements.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtEvenements.Rows[i][3].ToString() %></p>
                                </article>
                            <%}
                       } else {
                           for (int i = 0; i < dtEvenements.Rows.Count; i++) { %>
                               <article>
                                    <h4>
                                        <a class="event"><%=dtEvenements.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtEvenements.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtEvenements.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtEvenements.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtEvenements.Rows[i][3].ToString() %></p>
                                </article>
                           <%}
                       } %>
                </div>
                <div id="annonces">
                    <h3><strong>Annonces</strong></h3>
                    <% if (dtAnnonces.Rows.Count > 4) {
                            for (int i = 0; i < 4; i++) { %>
                                <article>
                                    <h4>
                                        <a class="event"><%=dtAnnonces.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtAnnonces.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtAnnonces.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtAnnonces.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtAnnonces.Rows[i][3].ToString() %></p>
                                </article>
                            <%}
                       } else {
                           for (int i = 0; i < dtAnnonces.Rows.Count; i++) { %>
                               <article>
                                    <h4>
                                        <a class="event"><%=dtAnnonces.Rows[i][2].ToString() %></a>
                                        <div hidden style="display: none;">
                                            <span class="type"><%=dtAnnonces.Rows[i][1].ToString() %></span>
                                            <span class="article"><%=dtAnnonces.Rows[i][3].ToString() %></span>
                                            <span class="img"><%=dtAnnonces.Rows[i][4].ToString() %></span>
                                        </div>
                                    </h4>
                                    <p><%=dtAnnonces.Rows[i][3].ToString() %></p>
                                </article>
                           <%}
                       } %>
                </div>
            </div>
        </div>
        <div class="phototheque">
            <div class="container">
                <h3 class="header">Photothéque</h3>
                <div class="show">
                    <img class="data" src="/images/studio/00.jpg" /><img class="exit" src="../icons/close.svg" />
                </div>
                <div class="img-content active">
                    <ul>
                        <% if (photos.Rows.Count > 6) {
                                for (int i = 0; i < 6; i++) { %>
                                    <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                                <%}
                           } else {
                               for (int i = 0; i < photos.Rows.Count; i++) { %>
                                   <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                               <%}
                           } %>
                        
                    </ul>
                </div>
                <div class="img-content">
                    <ul>
                        <% if (photos.Rows.Count > 12) {
                                for (int i = 6; i < 12; i++) { %>
                                    <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                                <%}
                           } else {
                               for (int i = 6; i < photos.Rows.Count; i++) { %>
                                   <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                               <%}
                           } %>
                    </ul>
                </div>
                <div class="img-content">
                    <ul>
                        <% if (photos.Rows.Count > 18) {
                                for (int i = 12; i < 18; i++) { %>
                                    <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                                <%}
                           } else {
                               for (int i = 12; i < photos.Rows.Count; i++) { %>
                                   <li><img src="<%=photos.Rows[i][1].ToString() %>" /></li>
                               <%}
                           } %>
                    </ul>
                </div>
                <section>
                    <span class="slider selected" data-index="0"></span><span class="slider" data-index="1"></span><span class="slider" data-index="2"></span>
                </section>
            </div>
        </div>
        <div class="contact" id="about">
            <div class="container">
                <a href="about.aspx">à propos</a>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad unde, minima a explicabo maiores aut ducimus magni, iure illo architecto amet ipsum provident fuga modi quos cumque voluptate quia? Ea, aliquid accusamus quam perferendis neque nemo voluptatem corrupti!</p>
            </div>
        </div>
        <div class="contact">
            <div class="container">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad unde, minima a explicabo maiores aut ducimus magni, iure illo architecto amet ipsum provident fuga modi quos cumque voluptate quia? Ea, aliquid accusamus quam perferendis neque nemo voluptatem corrupti!</p>
                <a href="contact.aspx">Nous contacter</a>
            </div>
        </div>
    </main>
    <script src="scripts/main.js"></script>
    <script type="text/javascript">
        const events = document.querySelectorAll('a.event');
        events.forEach(function (ev) {
            ev.addEventListener('click', function () {
                let nextSibling = ev.nextElementSibling;
                if (nextSibling.hasAttribute('hidden')) {
                    localStorage.setItem("ETitle", ev.textContent);
                    var EType = Array.from(nextSibling.children).filter(function (sa) {
	                    return sa.matches('.type');
                    });
                    localStorage.setItem("EType", EType[0].textContent);
                    var EArticle = Array.from(nextSibling.children).filter(function (sa) {
	                    return sa.matches('.article');
                    });
                    localStorage.setItem("EArticle", EArticle[0].textContent);
                    var EImage = Array.from(nextSibling.children).filter(function (sa) {
	                    return sa.matches('.img');
                    });
                    localStorage.setItem("EImage", EImage[0].textContent);
                }
                location.href = 'page.aspx';
            });
        });
    </script>
</asp:Content>