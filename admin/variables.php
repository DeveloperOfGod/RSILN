<?php

    if(!defined('AVTORIZ_KEY')){
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }

    $checkUsers = !empty($_POST['checkUsers']) ? $_POST['checkUsers'] : array();  
    $users = !empty($_POST['users']) ? $_POST['users'] : array(); 

    $sudoDelete = "/usr/local/bin/sudo ipfw delete ";
    $users = loadUsers($tableName);
    $str = count($users);
    
	$color = !empty($_POST['color']) ? $_POST['color'] : null;
	$time = !empty($_POST['time']) ? $_POST['time'] : null;
    $name = !empty($_POST['name']) ? $_POST['name'] : null;
    $surname = !empty($_POST['surname']) ? $_POST['surname'] : null;
    $patronymic = !empty($_POST['patronymic']) ? $_POST['patronymic'] : null;
    $who = !empty($_POST['who']) ? $_POST['who'] : null;
    $whose = !empty($_POST['whose']) ? $_POST['whose'] : null;
    $where = !empty($_POST['where']) ? $_POST['where'] : null;
    $ipAddress = !empty($_POST['ipAddress']) ? $_POST['ipAddress'] : null;
    $macAddress = !empty($_POST['macAddress']) ? $_POST['macAddress'] : null;
    $sudo = "/usr/local/bin/sudo ipfw add ";