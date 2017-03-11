<?php

    if(!defined('AVTORIZ_KEY')) {
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }

	date_default_timezone_set('Asia/Novosibirsk');
	
    $host      = 'localhost';
    $login     = 'zalex';
    $pass      = '709489zalex';
    $dbName    = 'avtoriz';
    $tableName = 'users_list'; 

    $startTime = microtime(true);
    $db        = mysql_connect($host, $login, $pass) or die('сервер недоступен');

    mysql_set_charset('utf8',$db);
    mysql_select_db($dbName, $db) or die ("Невозможно открыть базу");
	
    $endTime = microtime(true) - $startTime;
		
    if($endTime > 1.0){
		
	    $fp = fopen('./logs/logs_dataBASE.txt', 'a');
	    fwrite($fp, strftime('%d.%m.%Y - %H:%M:%S') .': DATA_BASE -> time: ' .$endTime .PHP_EOL);
	}
