<?php get_header(); ?>
<?php $wp_query = new WP_Query(); $wp_query->query('paged='.$paged);?>
<div class="page-container">
  <div class="page-container__align">
   <header class="top-line">
    <img src="<?php bloginfo("template_directory");?>/images/top_line/logotype.png" alt="Логотип">
    <form method="post">
     <a href="#win1">ЗАКАЗАТЬ ЗВОНОК</a> 
    </form>  
    <span>
     <?php if ( have_posts() ) : query_posts('p=5');while (have_posts()) : the_post(); ?>
      <?php the_content(); ?>
     <? endwhile; endif; wp_reset_query(); ?>
    </span>
   </header>
   <menu id="top_nav" class="menu">
    <div class="menu-button" onCLick="hide_show()">
     <img src="<?php bloginfo("template_directory");?>/images/menu.png" alt="Icon">
    </div>
    <div onCLick="hide_show2()"><ul id="menu-top-menu"><li><a href="http:\\nayan.by">На главную</a></li></ul></div>
   </menu>
   <div class="page-align">
    <div class="clr"></div>
    <main class="content-404">
     <div class="content-404__txt">
      <span>Произошла ошибка 404</span><br>
      Добро пожаловать на сайт нашего агенства nayan.by<br>
      Вы попали на страницу ошибки 404, возможной причиной данной ошибки может быть следующее:<br>
      Страница которую вы пытаетесь найти несуществует;<br>
      Страница которую вы пытаетесь найти была перенесена навсегда, а возможно временно;<br>
      Возможно адресс в браузерной строке который вы задали был введен некорректно,проверьте его правильность;<br>
      Некоторые браузеры чувствительны к вводимому регистру символов в браузерной строке, проверьте правильность регистров;<br>
      Попробуйте перейти по заданой адресной строке позднее.<br>
      Если данная проблема для вас является актуальной и постоянной, просьба связаться с нашим оператором для устранения её последующего возникновения, заранее благодарим Вас.<br>
      С уважением служба поддержки интернет-ресурса: nayan.by
     </div>
     <?php $wp_query = new WP_Query(); $wp_query->query('paged='.$paged);?>
     <div class="block-5">
      <div class="block-5__content">
       <HR WIDTH="100%" SIZE="0" color="#8ABB00">
       <?php if ( have_posts() ) : query_posts('p=34');while (have_posts()) : the_post(); ?>
        <span><?php the_title();?></span><br>
        <?php the_content(); ?>
       <? endwhile; endif; wp_reset_query(); ?>
      </div>
     </div>
     <div class="block-6">
      <?php echo do_shortcode("[huge_it_maps id='1']"); ?>
     </div>
    </main>
<?php get_footer();