<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Bogart Studio
 */
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Aspen Eye Studio is a business that provides clients with website design services as well as quality assurance for ad agencies">
    <?php wp_head(); ?>
    <title>Aspen Eye Studio</title>
</head>

<body <?php body_class(); ?>>
    <header>
        <!-- <div class="topbar">Topbar</div> -->
        <!-- <div class="logo-nav"> -->
        <!-- <div class="logo">Logo</div> -->
            <!-- <nav class="horz-menu">
                <?php wp_nav_menu( array(
                    'theme_location' => 'aes_main_menu'
                )); ?>
            </nav> -->
            
        <!-- </div> -->
    </header>