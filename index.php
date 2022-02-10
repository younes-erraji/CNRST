<?php get_header(); ?>
<section>
        <div class="container">
          <h2 class="header">À la une</h2>
          <div class="primary">
            <section><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/02.jpg"><a href="#">Démenti à propos de la publication d'un supposé classement des universités marocaines par le CNRST</a></section>
            <article>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Itaque in nisi tempora fugit, corporis, nihil, quis odio ipsum debitis dolor similique mollitia tempore quaerat sit omnis magni nulla. Aperiam voluptas delectus recusandae itaque reprehenderit at, cum suscipit corporis cumque rerum eveniet sint repellendus modi.</p>
            </article>
          </div>
          <div><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/0.jfif">
            <article><a href="#">Résultats relatifs aux Bourses de Recherche dans le domaine des Technologies Spatiales </a></article>
          </div>
          <div><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/01.jpg">
            <article><a href="#">Démenti à propos de la publication d'un supposé classement des universités marocaines par le CNRST </a></article>
          </div>
          <div><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/00.jpg">
            <article><a href="#">Résultats du Prix de la Meilleure Recherche Scientifique sur la Lutte contre les Violences Faites aux Femmes </a></article>
          </div>
          <div><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/1.webp">
            <article><a href="#">Résultats de l’Appel à pré-Projets de Recherche &amp; Développement multithématique 2020</a></article>
          </div>
        </div>
      </section>
      <div class="articles">
        <div class="container">


        <div id="appels-a-projects">
            <h3><strong>Appels à projects</strong></h3>

            <?php get_template_part('/post/categorie','content'); ?>

          </div>
          <div id="bourses">
            <h3><strong>Bourses</strong></h3>

            <?php get_template_part('/post/categorie','content'); ?>

          </div>
          <div id="evenements">
            <h3><strong>Evénements</strong></h3>

            <?php get_template_part('/post/categorie','content'); ?>

          </div>
          <div id="annonces" >
          <h3><strong>annonces</strong></h3>

            <?php get_template_part('/post/categorie','content'); ?>

          </div>


        </div>
      </div>
      <div class="phototheque">
        <div class="container">
          <h3 class="header">Photothéque</h3>
          <div class="show"><img class="data" src="../images/studio/00.jpg"/><img class="exit" src="../icons/close.svg"/></div>
          <div class="img-content active">
            <ul>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/00.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/00-min.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/0.jfif"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/0.png"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/01.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/1.webp"/></li>
            </ul>
          </div>
          <div class="img-content">
            <ul>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/02.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/04-min.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/01.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/06.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/07.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/07-min.jpg"/></li>
            </ul>
          </div>
          <div class="img-content">
            <ul>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/08.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/09.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/09-min.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/10.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/12.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/13.jpg"/></li>
            </ul>
          </div>
          <div class="img-content">
            <ul>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/00.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/0.png"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/02.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/06.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/08.jpg"/></li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/images/studio/10.jpg"/></li>
            </ul>
          </div>
          <section><span class="slider selected" data-index="0"></span><span class="slider" data-index="1"></span><span class="slider" data-index="2"></span><span class="slider" data-index="3"></span>
          </section>
        </div>
      </div>
      <div class="contact">
        <div class="container">
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad unde, minima a explicabo maiores aut ducimus magni, iure illo architecto amet ipsum provident fuga modi quos cumque voluptate quia? Ea, aliquid accusamus quam perferendis neque nemo voluptatem corrupti!</p><a href="../contact/contact.html">Nous contacter</a>
        </div>
      </div>
      <?php get_footer(); ?>