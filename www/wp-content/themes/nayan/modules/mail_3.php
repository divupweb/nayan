<?php
session_start();
$recepient = strip_tags($_SESSION['e-mail']);
$sitename = "nayan.by";

$name = trim($_POST["name"]);
$email = trim($_POST["email"]);
$phone = trim($_POST["phone"]);
$url = trim($_POST["url"]);
$money = trim($_POST["money"]);
$comments = trim($_POST["comments"]);

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
if (isset($_REQUEST['checkbox_5']))
$sait='отмечено';
else
$sait='не отмечено';
if (isset($_REQUEST['checkbox_6']))
$zach='отмечено';
else
$zach='не отмечено';

$message = "Имя: $name\nПочтовый ящик: $email\nНомер телефона: $phone\nСсылка на сайт: $url\nБюджет в месяц: $money\nКомментарии: $comments\nYandex: $yandex\nGoogle: $google\nVkontakte: $vk\nOK: $ok\nСайт: $sait\nЗачисления: $zach";
$pagetitle = "Предложение на основании бюджета с сайта \"$sitename\"";
$from_email="nayan@nayan.by";
mail($recepient, $pagetitle, $message, "Content-type: text/plain; charset=\"utf-8\"\n From: $from_email", "-f $from_email");