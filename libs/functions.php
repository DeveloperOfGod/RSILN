<?php    

    if(!defined('AVTORIZ_KEY')) {
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }
 
	function maxRule() {
	 
	    $sqlReq = "SELECT numRule FROM users_list ORDER BY numRule DESC";
	    $resultReq = mysql_query($sqlReq);   
	    
	    $maxRule = mysql_fetch_array($resultReq, MYSQL_NUM);    
	    return $maxRule[0];
	}

	function numRule($tableName, $minRule) {
		
	    $str = array();
	    $rule = $minRule;

	    $sqlReq = "SELECT `numRule` FROM " .$tableName;
		$resultReq = mysql_query($sqlReq);
		
		for($i = 0; $row = mysql_fetch_array($resultReq, MYSQL_ASSOC); $i++) $str[$i] = $row;
		sort($str);
		$countStr = count($str);
	    $stop = false;

		if(!empty($countStr)) {

			for($i = 0; $stop == false; $i++) {
				
		        for($j = 0; $j < $countStr; $j++) {
					
					if($minRule == $str[$j]['numRule']) {
					
					    $j = $countStr;
						$stop = false;
				    }
					else {
						
						$rule = $minRule;
						$stop = true;
					}
				}
				$minRule++;
			}
		}

		return $rule;
	}

	function allUsers() {
	 
	    $sqlReq = "SELECT COUNT(*) FROM users_list";        
	    $resultReq = mysql_query($sqlReq);
	    
	    $row = mysql_fetch_array($resultReq);
	    return $row[0];
	}

	function addUser($tableName, $numRule, $timeNow, $ip, $mac, $who, $whose, $where, $surname, $name, $patronymic, $phone, $type, $typeConnection, $email, $notes){
	    
	    $sqlReq = "INSERT INTO " .$tableName ."
	            VALUES (
	                NULL,
	                '0',
	                '" .$numRule ."',
	                '" .$timeNow ."',
	                '" .$ip ."',
	                '" .$mac ."',
	                '" .$who ."',
	                '" .$whose ."',
	                '" .$where ."',
	                '" .$surname ."',
	                '" .$name ."',
	                '" .$patronymic ."',
	                '" .$phone ."',
	                '" .$type ."',
	                '" .$typeConnection ."',
	                '" .$email ."',
					'" .$notes ."'
	            )";

	    mysql_query($sqlReq);
	}
	 
	function loadUsers($tableName) {

	    $str = !empty($_POST['str']) ? $_POST['str'] : array();
	  
	    $sqlReq = "SELECT * FROM " .$tableName ." ORDER BY id DESC";
	    $resultReq = mysql_query($sqlReq);

	    for($i = 0; $row = mysql_fetch_array($resultReq, MYSQL_ASSOC); $i++) $str[$i] = $row;
	    return $str;   
	}    

	function checkMac($mac, $tableName) {
		
		$check = false;
	    
	    $str = array();
		$check = true;
	 
		$sqlReq = "SELECT `mac` FROM " .$tableName ." WHERE `mac`=\"" .$mac ."\"";
	    $resultReq = mysql_query($sqlReq);
		for($i = 0; $row = mysql_fetch_array($resultReq, MYSQL_ASSOC); $i++) $str[$i] = $row;
		
		if(!$str) $check = false;

		return $check;
	}