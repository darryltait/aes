<?php


// include stylesheet and script files

function aes_scripts() {
    
   
      // Google Font
      wp_enqueue_style('googlefont', 'https://fonts.googleapis.com/css2?family=Monoton&family=Noto+Serif&family=Oxygen:wght@300&display=swap', array(), '1.0.0');
    //   bootstrap css
    wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css', array(), 'all');
    // bootstrap js
    wp_enqueue_script('bootstrap-js', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array(), true, true);
    // aes css
    wp_enqueue_style('aes-style', get_template_directory_uri() . '/style.css', array(), filemtime(get_template_directory() . '/style.css'), 'all');

    //   local js
    wp_enqueue_script('fontawesome-js', get_template_directory_uri() . '/js/fontawesome-all.min.js', array(), true, true);
    wp_enqueue_script('aes-js', get_template_directory_uri() . '/index.js', array(), true, true);

}

add_action( 'wp_enqueue_scripts', 'aes_scripts');
// Main configuration function
function aes_config() {
    // Register menus
    register_nav_menus(
        array(
            'aes_main_menu' => ('Main Menu'),
        
        )
        );
    add_theme_support('post-thumbnails');
    add_theme_support('title-tag');
    add_theme_support('custom-logo', array(
        'height' => 110,
        'width' => 200,
    ));
}

add_action('after_setup_theme', 'aes_config', 0);