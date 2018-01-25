 <?php get_header();?>
 <?php 
  session_start(); 
  $_SESSION['e-mail'] = category_description(8); 
 ?>
 <div class="page-container">
  <div class="page-container__align">
   <header class="top-line">
    <img src="<?php bloginfo("template_directory");?>/images/top_line/logotype.png" alt="Логотип">
    <form method="post">
     <a href="#feedback">ЗАКАЗАТЬ ЗВОНОК</a> 
    </form>  
    <span>
     <?php if ( have_posts() ) : query_posts('p=5');while (have_posts()) : the_post(); ?>
      <?php the_content(); ?>
     <? endwhile; endif; wp_reset_query(); ?>
    </span>
   </header>
   <menu id="top_nav" class="menu">
    <div class="menu__button" onclick="hide_show()">≡</div>
    <div onclick="hide_showView()"><?php wp_nav_menu(array('theme_location'=>'primary', 'container'=>'false', 'menu_class'=>''));?></div>
   </menu>
   <div class="page-align">
    <div class="clr"></div>
    <main>
     <div id="block_1" class="adverse-element">
      <div class="adverse-element__content">
       <p>
        НАСТРОЙКА И ВЕДЕНИЕ РЕКЛАМНЫХ КАМПАНИЙ<br>
        <span style="color: rgb(235, 15, 15);">Я</span>НДЕКС.ДИРЕКТ И <span style="color: rgb(47, 159, 219);">G</span><span style="color: rgb(235, 15, 15);">O</span><span style="color:rgb(243, 217, 15)">O</span><span style="color: rgb(47, 159, 219);">G</span><span style="color:rgb(61, 136, 48)">L</span><span style="color:rgb(240, 16, 39)">E</span> ADWORDS<br>
        СОЦИАЛЬНЫХ СЕТЯХ <span style="color: rgb(75, 80, 136);">VK</span>, <span style="color:rgb(255, 109, 10)">OK</span>
       </p>
       <h1 style="padding-top: 20px;font-size: 60px;">Ваша реклама будет работать эффективно</h1>
       <form method="post">
        <a href="#feedback-form">Получить предложение</a> 
       </form>  
      </div>
     </div>
     <div class="clr"></div>
     <div id="block_2" class="principles-block">
      <HR WIDTH="85%" SIZE="0" color="black">
      <?php echo category_description(3)?>
      <HR WIDTH="85%" SIZE="0" color="black">
      <div class="principles-block__content">
       <article class="principle">
        <img src="<?php bloginfo("template_directory");?>/images/block_2/icon_1.png" alt="Icon">
        <div class="clr"></div>
        <?php if ( have_posts() ) : query_posts('p=13');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <?php the_content(); ?>
        <? endwhile; endif; wp_reset_query(); ?>
       </article>
       <article class="principle">
        <img src="<?php bloginfo("template_directory");?>/images/block_2/icon_2.png" alt="Icon">
        <div class="clr"></div>
        <?php if ( have_posts() ) : query_posts('p=20');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <?php the_content(); ?>
        <? endwhile; endif; wp_reset_query(); ?>
       </article>
       <article class="principle">
        <img src="<?php bloginfo("template_directory");?>/images/block_2/icon_3.png" alt="Icon">
        <div class="clr"></div>
        <?php if ( have_posts() ) : query_posts('p=23');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <?php the_content(); ?>
        <? endwhile; endif; wp_reset_query(); ?>
       </article>
      </div>
     </div>
     <div id="block_3" class="costs-block">
      <HR WIDTH="99%" SIZE="0" color="black">
      <span><?php echo get_cat_name(4)?></span>
      <HR WIDTH="99%" SIZE="0" color="black">
      <div class="costs-block__content">
       <article class="costs">
        <?php if ( have_posts() ) : query_posts('p=25');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <table cellspacing="0" cellpadding="0">
          <tr> 
           <td style="vertical-align:top;"><img src="<?php bloginfo("template_directory");?>/images/block_3/icon_1.png" alt="Icon"></td>
           <td><?php the_content(); ?></td>
        <? endwhile; endif; wp_reset_query(); ?>
          </tr>
         </table>
       </article>
       <article class="costs">
        <?php if ( have_posts() ) : query_posts('p=27');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <table cellspacing="0" cellpadding="0">
          <tr> 
           <td style="vertical-align:top;"><img src="<?php bloginfo("template_directory");?>/images/block_3/icon_2.png" alt="Icon"></td>
           <td><?php the_content(); ?></td>
        <? endwhile; endif; wp_reset_query(); ?>
          </tr>
         </table>
       </article>
       <article class="costs">
        <?php if ( have_posts() ) : query_posts('p=30');while (have_posts()) : the_post(); ?>
         <span><?php the_title();?></span>
         <table cellspacing="0" cellpadding="0">
          <tr> 
           <td style="vertical-align:top;"><img src="<?php bloginfo("template_directory");?>/images/block_3/icon_3.png" alt="Icon"></td>
           <td><?php the_content();?></td>
        <? endwhile; endif; wp_reset_query(); ?>
          </tr>
         </table>
       </article>
      </div>
      <form method="post">
       <a href="#feedback-main">получить предложение на основании моего бюджета</a> 
      </form>  
     </div>
     <div id="block_4" class="feedback-block">
      <video autoplay loop muted>
       <source src="<?php bloginfo("template_directory");?>/videos/video_1.mp4" type="video/mp4">
      </video>
      <div class="feedback-block__content">
       <h3>МЫ УЖЕ ГОТОВЫ НАЧАТЬ РАБОТАТЬ НАД ВАШЕЙ КОМПАНИЕЙ.</h3>
       <h3>А ВЫ?</h3>
       <form method="post">
        <a class="feedback-block__href-1" href="#feedback">остались вопросы</a> 
        <a class="feedback-block__href-2 dop_pad" href="#feedback-form">хочу попробовать</a> 
       </form>  
      </div>
     </div>
     <div class="contacts-block">
      <div class="contacts-block__content">
       <HR WIDTH="100%" SIZE="0" color="#8ABB00">
       <?php if ( have_posts() ) : query_posts('p=34');while (have_posts()) : the_post(); ?>
        <span><?php the_title();?></span>
        <?php the_content(); ?>
       <? endwhile; endif; wp_reset_query(); ?>
      </div>
     </div>
     <div class="map-block">
      <?php echo do_shortcode("[huge_it_maps id='1']"); ?>
     </div>
    </main>
    <?php get_footer();?>