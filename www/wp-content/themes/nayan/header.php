<!doctype html>
<html>
 <head>
  <title>NAYAN - internet marketing</title>
  <meta name = "keywords" content = "заказать контекстную рекламу, интернет реклама, контекстная реклама гугл, контекстная реклама сайта, контекстная реклама цена,реклама в соц сетях, реклама вконтакте, сайт создание"/> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="format-detection" content="telephone=no"/>
  <link href="<?php bloginfo("template_directory");?>/style.css" rel="stylesheet" type="text/css">
  <script src="<?php bloginfo("template_directory");?>/js/jquery.min.js"></script>
  <script src="<?php bloginfo("template_directory");?>/js/common.js"></script>
  <?php wp_head(); ?>
  <style>
   @font-face{   
    font-family: Roboto Lt;
    src: url("<?php bloginfo("template_directory");?>/fonts/font_1.eot");
    src: url("<?php bloginfo("template_directory");?>/fonts/font_1.eot?#iefix")format("embedded-opentype"),
         url("<?php bloginfo("template_directory");?>/fonts/font_1.woff") format("woff"),
         url("<?php bloginfo("template_directory");?>/fonts/font_1.ttf") format("truetype");
    font-style: normal;
    font-weight: normal;
   }
   @font-face{   
    font-family: Jura;
    src: url("<?php bloginfo("template_directory");?>/fonts/font_2.eot");
    src: url("<?php bloginfo("template_directory");?>/fonts/font_2.eot?#iefix")format("embedded-opentype"),
         url("<?php bloginfo("template_directory");?>/fonts/font_2.woff") format("woff"),
         url("<?php bloginfo("template_directory");?>/fonts/font_2.ttf") format("truetype");
    font-style: normal;
    font-weight: normal;
   }
 </style>
 </head>
 <body>
 <script>
  var h_hght = 65; 
  var h_mrg = 0;  
  $(function(){
   var elem = $('#top_nav');
   var top = $(this).scrollTop(); 
   if(top > h_hght){
     elem.css('top', h_mrg);
   }           
   $(window).scroll(function(){ 
    top = $(this).scrollTop();    
    if (top+h_mrg < h_hght){
     elem.css('top', (h_hght-top));
    } 
    else{
     elem.css('top', h_mrg);
    }
   });
  });
 </script>
 <script type="text/javascript">
  $(document).ready(function(){
   $("#menu-item-9").on("click","a", function (event){
    event.preventDefault();
    var id  = $(this).attr('href'),
    top = $(id).offset().top;
    $('body,html').animate({scrollTop: top}, 1000);
   });
  });
 </script>
 <script type="text/javascript">
  $(document).ready(function(){
   $("#menu-item-10").on("click","a", function (event){
    event.preventDefault();
    var id  = $(this).attr('href'),
    top = $(id).offset().top;
    $('body,html').animate({scrollTop: top}, 1000);
   });
  });
 </script>
 <script type="text/javascript">
  $(document).ready(function(){
   $("#menu-item-11").on("click","a", function (event){
    event.preventDefault();
    var id  = $(this).attr('href'),
    top = $(id).offset().top;
    $('body,html').animate({scrollTop: top}, 1000);
   });
  });
 </script>
 <script type="text/javascript">
  $(document).ready(function(){
   $("#menu-item-12").on("click","a", function (event){
    event.preventDefault();
    var id  = $(this).attr('href'),
    top = $(id).offset().top;
    $('body,html').animate({scrollTop: top}, 1000);
   });
  });
 </script>
 <script>
  function hide_show(){
   if(document.getElementById("menu-top-menu").style.display=="block")
    document.getElementById("menu-top-menu").style.display="none";
   else
    document.getElementById("menu-top-menu").style.display="block";
   }
   function hide_showView(){
    if (document.body.clientWidth<'735')
    if(document.getElementById("menu-top-menu").style.display=="block")
     document.getElementById("menu-top-menu").style.display="none";
    else
     document.getElementById("menu-top-menu").style.display="block";
   }
 </script>
 <script type="text/javascript">
  $(function(){
   $(window).resize(function(){
    if(document.body.clientWidth>='735')
     document.getElementById("menu-top-menu").style.display="inline";
   });
  });
  $(function() {
   $(window).resize(function(){
    if(document.body.clientWidth<'735')
     document.getElementById("menu-top-menu").style.display="none";
   });
  });
 </script>
  <div class="dm-overlay" id="feedback">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      <h3>Мы свяжемся с вами в течении cуток</h3>
      <hr size="2" color="black">
      <p>Оставьте нам ваши контактные данные.</p>
      <form id="form" method="post">
       <input type="text" name="name" placeholder="Ваше имя" pattern="\D{3,}" required>
       <input type="text" name="phone" placeholder="Номер телефона" pattern="\d{3,}" minlength="5" maxlength="25" required>
       <button>Отправить данные</button>
     </form>
     </div>
    </div>
  </div>
  </div>
  <div class="dm-overlay" id="success">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      <h3>Спасибо за заявку! В ближайшее время мы с вами свяжемся.</h3>
     </div>
    </div>
   </div>
  </div>
  <div class="dm-overlay" id="feedback-form">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      <h3>Мы свяжемся с вами в течении cуток</h3>
      <hr size="2" color="black">
      <p>Заполните форму и получите наше предложение</p>
      <form id="form_2" method="post">
       <input type="text" name="name" placeholder="Ваше имя" pattern="\D{3,}" required>
       <input type="text" name="url" placeholder="Ссылка на сайт" minlength="5" maxlength="25" required>
       <input type="text" name="email" placeholder="Номер телефона(Email)" minlength="5" maxlength="25" required>
        <label><input type="checkbox" name="checkbox_1">Yandex</label>
        <label><input type="checkbox" name="checkbox_2">Google</label>
        <label><input type="checkbox" name="checkbox_3">Vk</label>
        <label><input type="checkbox" name="checkbox_4">Ok</label>
       <button>Отправить</button>
     </form>
     </div>
    </div>
  </div>
 </div>
  <div class="dm-overlay" id="feedback-main">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      <h3>Мы свяжемся с вами в течении cуток</h3>
      <hr size="2" color="black">
      <p>Заполните форму и получите наше предложение</p>
      <form id="form_3" method="post">
       <input type="text" name="name" placeholder="Ваше имя" pattern="\D{3,}" required>
       <input type="text" name="email" placeholder="Почтовый ящик(Email)" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
       <input type="text" name="phone" placeholder="Номер телефона" pattern="\d{3,}" minlength="5" maxlength="25" required>
       <input type="text" name="url" placeholder="Ссылка на ваш сайт" minlength="5" maxlength="25">
       <input type="text" name="money" placeholder="Бюджет в месяц(бел.руб)" pattern="[0-9]{3,}" required>
        <label><input type="checkbox" name="checkbox_1">Yandex</label>
        <label><input type="checkbox" name="checkbox_2">Google</label>
        <label><input type="checkbox" name="checkbox_3">Vk</label>
        <label><input type="checkbox" name="checkbox_4">Ok</label>
        <div class="clr"></div>
        <label><input type="checkbox" name="checkbox_5">Создание сайта</label>
        <label><input type="checkbox" name="checkbox_6">Зачисление</label>
        <textarea name="comments" placeholder="В случае отсутствия сайта, опишите его тематику.Также здесь вы можете оставить нам свои комментарии."></textarea>
       <button>Отправить</button>
     </form>
     </div>
    </div>
  </div>
 </div>
 <div class="dm-overlay" id="confidentiality">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      <h3><?php echo get_cat_name(6)?></h3>
      <hr size="2" color="black">
      <p><?php echo category_description(6)?></p>
     </div>
    </div>
  </div>
 </div>
 <div class="dm-overlay" id="licenses">
   <div class="dm-table">
    <div class="dm-cell">
     <div class="dm-modal">
      <a href="#close" class="close"></a>
      Лицензия/Сертификаты
      <p> 
       <?php echo do_shortcode("[metaslider id=86]"); ?>
      </p>
     </div>
    </div>
  </div>
 </div>