<!DOCTYPE html>
<html style='margin: 0 !important;'>
  <head>
  <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>CNRST - Accueil</title>
    <link rel="icon" href="<?php echo get_bloginfo('template_directory') ?>/logo.svg" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&amp;display=swap"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Itim&amp;display=swap"/>
    <?php wp_head(); ?>
  </head>
  <body>
    <header>
      <div class="container">
        <div class="logo">
          <h1><a href="#"><?php
             if (function_exists('the_custom_logo')){
                the_custom_logo();
             } else {
                 bloginfo('name');
              }
          ?>CNRST</a></h1>
        </div>
        <div class="search-box">
          <input type="text" name="search" placeholder="Recherche..."/><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/search.svg"/></a>
        </div>
        <div class="langue"><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/morocco.svg"/></a><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/france.svg"/></a></div>
      </div>
    </header>
    <nav>
      <div class="container">
         <div class="bars"><img class="bars-icon" src="<?php echo get_bloginfo('template_directory') ?>/icons/menu.svg"/>
          <ul class="nav">
            <li><a href="../accueil/index.html">Accueil</a></li>
            <li data-sub="cnrst"><a>CNRST</a></li>
            <li data-sub="services"><a>Unités et services</a></li>
            <li data-sub="financement"><a>Financement</a></li>
            <li data-sub="informations"><a>Informations</a></li>
            <li data-sub="publications"><a>Publications</a></li>
          </ul>
        </div>
        <ul class="nav">
          <li><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/homepage.svg"/></a></li>
          <li data-sub="cnrst"><a>CNRST</a></li>
          <li data-sub="services"><a>Unités et services</a></li>
          <li data-sub="financement"><a>Financement</a></li>
          <li data-sub="informations"><a>Informations</a></li>
          <li data-sub="publications"><a>Publications</a></li>
        </ul>
        <section class="sublinks">
          <aside>
            <div class="x"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/close.svg"/></div>
            <ul class="links" id="cnrst"><strong>A Propos</strong>
              <li><a href="#">Présentation</a></li>
              <li><a href="#">Mot de la Directrice</a></li>
              <li><a href="#">Organigramme</a></li>
              <li><a href="#">Stratégie 2018-2022</a></li>
              <li><a href="#">CNRST en chiffres</a></li><strong>Conseil d'administration</strong>
              <li><a href="#">Textes réglementaires</a></li>
              <li><a href="#">Membres du conseil</a></li>
              <li><a href="#">Comptes rendus</a></li>
              <li><a href="#">Résolutions</a></li>
              <?php
                // //display primary menu
                // if(has_nav_menu('primary-menu')) {
                //   wp_nav_menu(array(
                //       'theme_location'=>'primary-menu',
                //       'container'=>'',
                //       'items_wrap'=>'<ul class="links" id="cnrst"><strong>A Propos</strong>%3$s</ul>'
                //   ));
                // }
              ?>
            </ul>
            <ul class="links" id="services"><strong>Pôle mutualisation </strong>
              <li><a href="#">IMIST</a></li>
              <li><a href="#">UATRS</a></li>
              <li><a href="#">CCMM</a></li>
              <li><a href="#">MARWAN</a></li>
              <li><a href="#">ING</a></li><strong>Pôle moyen et appui à la recherche</strong>
              <li><a href="#">Programmes scientifiques </a></li>
              <li><a href="#">Coopération</a></li>
              <li><a href="#">Relations avec la communauté de chercheurs marocains à l’étranger</a></li>
              <li><a href="#">Bourses de recherche</a></li>
            </ul>
            <ul class="links" id="financement"><strong>Programmes nationaux</strong>
              <li><a href="#">Financement des projets de recherche </a></li>
              <li><a href="#">Financement des structures d’excellence </a></li>
              <li><a href="#">Soutien à la publication d’ouvrages scientifiques</a></li><strong>Appels à projets internationaux</strong>
              <li><a href="#">Coopération internationale</a></li><strong>Bourses d'excellence</strong>
              <li><a href="#">Appel à candidature </a></li>
              <li><a href="#">Rapport d’étape et annuels</a></li>
            </ul>
            <ul class="links" id="informations">
              <li><a href="#">CNRST en média</a></li>
              <li><a href="#">Evénements</a></li>
              <li><a href="#">CNRST recrute</a></li>
              <li><a href="#">Appels d'offres</a></li>
              <li><a href="#">Certification des copies</a></li>
              <li><a href="#">Droit d'accès à l'information</a></li>
            </ul>
            <ul class="links" id="publications">
              <li><a href="#">Rapports d'activités</a></li>
              <li><a href="#">Bilans et Etudes</a></li>
              <li><a href="#">Newsletter</a></li>
            </ul>
          </aside>
        </section>
      </div>
    </nav>
    <main>