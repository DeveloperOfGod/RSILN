<?php

    if(!defined('AVTORIZ_KEY')){
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }
	
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">  
<html>  
<head>  
<link rel="stylesheet" type="text/css"  href="/skins/css/admin.css"/>
<script type="text/javascript" src="/skins/js/jquery.js"></script>
<script type="text/javascript" src="/skins/js/Spoiler.js"></script>

</head>
<body>

<div id = "wrapper">
<form action="" method="post"> 

        <div id = "infoPanel">
            <span>Всего пользователей: <?php echo allUsers(); ?></span> 
        </div>
	    <div id = "controlPanel">
            <input class = "avtorizButton" name="deleteUsers" type="submit" value="Удалить отмеченные"/> 
            <input class = "avtorizButton" name="updateUsers" type="submit" value="Пометить увиденные"/>		
		</div>	
		
		<div id = "usersWrapper">
			
			<?php   
                for($i = 0; $i < $str; $i++){
			
                    foreach($users[$i] as $row => $value){
					
					    if($row == 'check'){
						
						    if($value == 1) $color = "Panel";
							else $color = "Panel2";						
						}
                    }
            ?>
			<div class = "wrap_all" >
			    <div class = "<?php echo $color ?>">					
					<div id ="chexBox">
				        <input type="checkbox" name="checkUsers[]" id = "<?php echo $i ?>" value="<?php echo $users[$i]['id']; ?>" />
					</div>
					
				    <div id="time">
					    <span><?php echo $users[$i]['time']; ?></span>
					</div>
				</div>
				
			    <div class = "user" >
				
		            <div class = "miniInfo" >
											
						<div id="col">
						    <span>Номер правила: <?php echo $users[$i]['numRule']; ?></span>
						</div>
						
                        <div id="col">
					        <span>MAC: <?php echo $users[$i]['mac']; ?></span>
					    </div>
						
						<div id="col">
						    <span>Должность: <?php echo $users[$i]['who']; ?></span>
						</div>
						
						<div id="col">
						    <span>Ф.И.О: <?php echo $users[$i]['surname'] ." " .$users[$i]['name'] ." " .$users[$i]['patronymic']; ?></span>
						</div>
						
						<div id="col">
						    <span>Ауд.: <?php echo $users[$i]['where']; ?></span>
						</div>
				    </div>	
					
				    <div class = "userInfo" >
					    <span> IP адрес: <?php echo $users[$i]['ip']; ?> </span>	<br>
					    <span> Подразделение за которым закрепленно оборудование: <?php echo $users[$i]['whose']; ?> </span>	<br>
                        <span> Место расположения стационарного компьютера или рабочего места ответсвенного за портативное устройство лица: <?php echo $users[$i]['where'] ?></span> <br>					
	                    <span> Тип оборудования: <?php echo $users[$i]['type']; ?></span> <br>
	                    <span> Подключен к сети факультета: <?php echo $users[$i]['typeConnection']; ?></span> <br>
						<span> Номер телефона: <?php echo $users[$i]['phone']; ?></span> <br>
						<span> Email: <?php echo $users[$i]['email']; ?></span> <br>
						<span> Примечание: <?php if($users[$i]['notes'] == null) echo "отсутствует."; else echo $users[$i]['notes']; ?></span> <br>
		            </div>
		        </div>
			</div>
			<?php
            }        
            ?>	
		</div>
</form>
</div>
</body>
</html>

