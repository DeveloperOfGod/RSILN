<?php

    if(!defined('AVTORIZ_KEY')) {
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }

    $timeNow = strftime('%d.%m.%Y');  
    
    $name              = !empty($_POST['name']) ? $_POST['name'] : null;
    $surname           = !empty($_POST['surname']) ? $_POST['surname'] : null;
    $patronymic        = !empty($_POST['patronymic']) ? $_POST['patronymic'] : null;
    $who               = !empty($_POST['who']) ? $_POST['who'] : null;
    $whose             = !empty($_POST['whose']) ? $_POST['whose'] : null;
    $where             = !empty($_POST['where']) ? $_POST['where'] : null;
	$type              = !empty($_POST['type']) ? $_POST['type'] : null;
	$typeConnection    = !empty($_POST['typeConnection']) ? $_POST['typeConnection'] : null;
	$phone             = !empty($_POST['phone']) ? $_POST['phone'] : null;
	$email             = !empty($_POST['email']) ? $_POST['email'] : null;
	$notes             = !empty($_POST['notes']) ? $_POST['notes'] : null;
    $whose2            = !empty($_POST['whose2']) ? $_POST['whose2'] : null;
	$type2             = !empty($_POST['type2']) ? $_POST['type2'] : null;


    $ipAddress  = $_SERVER['REMOTE_ADDR'];
    $macAddress = null;
    $sudo       = "/usr/local/bin/sudo ipfw add ";
    $addMAC     = " skipto 19900 tag 1 ip from any to any MAC any ";
    
    $ipFormat   = "/[\d|0-255]{1,3}\.[\d|0-255]{1,3}\.[\d|0-255]{1,3}\.[\d|0-255]{1,3}/i";
    $macFormat  = "/[\d|A-F]{2}\:[\d|A-F]{2}\:[\d|A-F]{2}\:[\d|A-F]{2}\:[\d|A-F]{2}\:[\d|A-F]{2}/i";
    
    $info = array();
