<?php

    if(!defined('AVTORIZ_KEY')) {
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }

    if(!empty($_POST['deleteUsers'])) {    
        
        if(count($checkUsers) > 0) {    
         
            for($i = 0; $i < count($checkUsers); ++$i) {
                
                $sqlReq = "SELECT numRule FROM " .$tableName ." WHERE id = " .$checkUsers[$i];
                $result = mysql_query($sqlReq);
                $row = mysql_fetch_array($result);
                exec($sudoDelete .$row[0]);  
                
                $sqlReq = "DELETE FROM " .$tableName ." WHERE id = " .$checkUsers[$i];
                mysql_query($sqlReq);
            }

            header('location: http://' .$_SERVER['HTTP_HOST'] .$_SERVER['PHP_SELF']); 
            exit();    
        }    
    }
    
    if(!empty($_POST['updateUsers'])) {  
        
        if(count($checkUsers) > 0) {    
         
            for($i = 0; $i < count($checkUsers); ++$i) {
             
                $sqlReq = "UPDATE `" .$tableName ."` SET `check` = 1 WHERE `id` = " .$checkUsers[$i];
                mysql_query($sqlReq);
            }
                            
            header('location: http://' .$_SERVER['HTTP_HOST'] .$_SERVER['PHP_SELF']); 
            exit();    
        }    
    }
    
    
    
    
    
    