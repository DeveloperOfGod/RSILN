<?php

    if(!defined('AVTORIZ_KEY')) {
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }
	
    $startTime = microtime(true);

    exec("arp -na", $arp);

    $arpCount = count($arp);

    if($arpCount) {

        for($i = 0; $i < $arpCount; $i++) {
            
            if(!empty($arp[$i])) {
             
                if(preg_match($ipFormat, $arp[$i], $ip)) $result[$i][0] = $ip[0];             
             
                if(preg_match($macFormat, $arp[$i], $mac)) {
                 
                    $result[$i][1] = $mac[0];
                    
                    if($ip[0] == $ipAddress && !empty($mac[0])) {						
                        $macAddress = $mac[0];
						break;
					} else {
                        $macAddress = null;
                    }
                }
            }
        }
		
		$endTime = microtime(true) - $startTime;
		
		if($endTime > 1.0) {

	        $fp = fopen('./tmp/logs_getMAC.txt', 'a');
	        fwrite($fp, strftime('%d.%m.%Y - %H:%M:%S') .': get_MAC -> time: ' .$endTime .PHP_EOL);
		}
		
        if(isset($_POST['send'])) { 
		
            if(!$whose && !$whose2)
                $info[] = 'Укажите подразделение за которым закрепленно оборудование ';
                
			if(!$type && !$type2)
                $info[] = 'Укажите тип оборудования';
			
			if(!$typeConnection)
                $info[] = 'Укажите тип соединения';
				
            if(!$where)
                $info[] = 'Укажите где вы находитесь';
			
		    if(!$surname)   
                $info[] = 'Введите фамилию';  
                
            if(!$name)   
                $info[] = 'Введите имя';
             
            if(!$patronymic)
                $info[] = 'Введите отчество';
             
            if(!$who)
                $info[] = 'Укажите вашу должность';
			
			if(!$phone)
                $info[] = 'Укажите номер телефона';
			
			if(!$email)
                $info[] = 'Укажите электронную почту';
                
            if(count($info) == 0) {
             
                $maxRule = maxRule();

                if(!$maxRule)                 
                    $maxRule = 10000;                    
                else                  
                    $maxRule += 1;
              				
				if($maxRule <= 15000){
				
                    if($whose == null)    					
    					$whose = $whose2;
    				
    				if($type == null)    					
    					$type = $type2;    				    			   
    			   
                    addUser(

                        "users_list",
                        $maxRule,
                        $timeNow,
                        $ipAddress,
                        $macAddress,
                        $who,
                        $whose,
                        $where,
                        $surname,
                        $name,
                        $patronymic,
                        $phone,
                        $type,
                        $typeConnection,
                        $email,
                        $notes
                    );    
                    
                    exec($sudo .$maxRule .$addMAC .$macAddress);
                    
                    header('location: http://' .$_SERVER['HTTP_HOST'] .$_SERVER['REQUEST_URI']);
                    exit();

				} else
					echo "Ошибка: Обратитесь к системному администратору!";
            }
                          
        } else
            $info[] = 'Заполние поля';
    }
    

    
    
    
    
    
    
    