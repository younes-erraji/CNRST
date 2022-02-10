<?php
  function fn_theme_scripts(){
  wp_enqueue_style('fontawesome',get_template_directory_uri() . '../frameworks/normalize.css');
  wp_enqueue_style('custom-style',get_stylesheet_uri());
  }
  add_action('wp_enqueue_scripts','fn_theme_scripts');

  function fn_theme_supports(){
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('html5',array('search-from'));
    add_theme_support('custom-logo');
  }
  add_action('after_setup_theme','fn_theme_supports');

  function cool_scripts(){
    wp_enqueue_script( 'cool-stuff', get_stylesheet_directory_uri() . '/scripts/script.js', array('jquery'), '1.0.0', false);
    }
    add_action( 'wp_enqueue_scripts', 'cool_scripts' );

  //register navigation menu
  function fn_nav_menu() {
    register_nav_menus(array(
        'primary-menu'=> __('Primary Menu','text_domain'),
        'footer-menu'=>__('Footer Menu','text_domain')
    ));
  }
  add_action('init','fn_nav_menu')
?>