</main>
    <button class="up"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/up.svg"/></button>
    <footer>
      <div class="contact">
        <div class="container">
          <div class="cnrst">
            <h3><?php
             if (function_exists('the_custom_logo')){
                the_custom_logo();
             }else{
                 bloginfo('name');
              }
          ?>CNRST</h3>
            <ul>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/icons/map.svg"/>
                <p>Av. Angle Allal Al Fassi et Av. des FAR, Hay Ryad, BP. 8027 10102 Rabat, Maroc Rabat 8027</p>
              </li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/icons/chat.svg"/>contact@cnrst.com</li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/icons/phone.svg"/>(+212) 05 37.56.98.00</li>
              <li><img src="<?php echo get_bloginfo('template_directory') ?>/icons/phone.svg"/>(+212) 05 37.56.98.34</li>
              <li><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/http.svg"/>https://www.cnrst.ma</a></li>
            </ul>
          </div>
          <div class="liens">
            <h4>Liens</h4>
            <ul>
              <li><a href="#">Accueil</a></li>
              <li><a href="#">CNRST</a></li>
              <li><a href="#">Unités et services</a></li>
              <li><a href="#">Financement de la recherche</a></li>
              <li><a href="#">Informations</a></li>
              <li><a href="#">Publications</a></li>
            </ul>
          </div>
          <div class="apropos">
            <h4>a propos</h4>
            <article>Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio pariatur dolore quos dolor eos numquam repellat unde illo deleniti? Officia unde saepe minima iusto aspernatur fugiat nam quae, iste nulla blanditiis! Dolores magnam modi nihil provident recusandae quo! Sit reiciendis explicabo commodi repellendus expedita.
              <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores ipsa nam inventore, voluptatibus in accusantium, asperiores mollitia, quaerat ipsum nihil doloremque odit!</p>
            </article>
          </div>
        </div>
      </div>
      <div class="copy">
        <div class="container">
          <p>&copy; Copyright <strong>CNRST</strong>. All Rights Reserved<span>Designed by Younes &amp; Youssef &amp; Mustapha.</span></p>
          <div class="social"><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/facebook.svg"/></a><a href="#"><img src="<?php echo get_bloginfo('template_directory') ?>/icons/linkedin.svg"/></a></div>
        </div>
      </div>
    </footer>
    <script src="/scripts/script.js"></script>
  </body>
</html>