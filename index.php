<?php

    header("Content-Type: text/html; charset=utf-8");  
    error_reporting(E_ALL); 
    
    define('AVTORIZ_KEY', true);
    
    include './debug.php';
    include './config.php';
    include './libs/functions.php';
    include './variables.php';
    include './modules/main_controller.php';
    include './skins/tpl/index.tpl';
    
    