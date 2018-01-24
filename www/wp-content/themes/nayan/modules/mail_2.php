<?php
session_start();
$recepient = strip_tags($_SESSION['e-mail']);
$sitename = "nayan.by";

$name = trim($_POST["name"]);
$url = trim($_POST["url"]);
$email = trim($_POST["email"]);
if (isset($_REQUEST['checkbox_1']))
$yandex='отмечено';
else
$yandex='не отмечено';
if (isset($_REQUEST['checkbox_2']))
$google='отмечено';
else
$google='не отмечено';
if (isset($_REQUEST['checkbox_3']))
$vk='отмечено';
else
$vk='не отмечено';
if (isset($_REQUEST['checkbox_4']))
$ok='отмечено';
else
$ok='не отмечено';

$message = "Имя: $name\nCсылка на сайт: $url\nПочта,номер телефона: $email\nYandex: $yandex\nGoogle: $google\nVkontakte: $vk\nOK: $ok";
$pagetitle = "Предложение по рекламе с сайта \"$sitename\"";
$from_email="nayan@nayan.by";
mail($recepient, $pagetitle, $message, "Content-type: text/plain; charset=\"utf-8\"\n From: $from_email", "-f $from_email");