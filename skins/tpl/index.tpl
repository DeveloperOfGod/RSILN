<?php 

    if(!defined('AVTORIZ_KEY')){
     
       header("HTTP/1.1 404 Not Found");     
       exit(file_get_contents('./404.html'));
    }
	
     //	echo numRule($tableName, 10000);
	if($macAddress == 'MAC не определен'){
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">  
<html>  
<head>  
<link rel="stylesheet" type="text/css"  href="/skins/css/error.css"/>
</head>
<body>
    <div id = "error_wrapper" >
    <div id = "message" >
	    <p>
	        Похоже что то пошло не так. <br>
            Мы не ожидали увидеть Вас здесь. <br>
            При необходимости обратитесь к системному администратору вашей сети. <br>
        </p>
	</div>
	</div>
</body>
</html>
<?php 
}else{
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">  
<html>  
<head>  
<link rel="stylesheet" type="text/css"  href="/skins/css/index.css"/>
<script type="text/javascript" src="/skins/js/select.js"></script>
</head>
<body>
    <div id = "body_head" >    
    </div>
	
	<div id = "wrapper" >
	
	    <div id = "head" >
		</div>	
		
		<div id = "content" >
		
		<?php			
		if(!checkMac($macAddress, $tableName)){
		?>
		    <div class = "info_block" >

		        <div class = "info_text_greeting" >

					<div class = "info_title" >
					
				        <div class = "info_title_left" >
					    </div>
						
				        <div class = "info_title_center" >
                            <div class = "info_title_center_greeting" >
							    <h4>Здравствуйте!</h4>
							</div>
						</div> <!-- info_title_center -->	
						
				        <div class = "info_title_right" >
					    </div>
						
		            </div> <!-- info_title -->	

			        <p>
	                    Мы рады приветствовать Вас в компьютерной сети радиофизического факультета! Это сообщение появилось здесь так, как оборудование, при помощи которого вы подключены, не зарегистрировано на нашем сервере. Вместо бумажных документов вы можете предоставить сведения об устройстве, с которого вы вышли в сеть и об ответственном за него лице в электронном виде прямо на этой странице. После этого вы сможете продолжить использовать сеть.
	                </p>
		     	</div> <!-- info_text -->		     
		    </div> <!-- info_block -->
			
    <form name = "myForm" action="" method="post" >  

		    <div class = "info_block" >

		        <div class = "info_text" >

					<div class = "info_title" >
					
				        <div class = "info_title_left" >
					    </div>
						
				        <div class = "info_title_center" >
                            <div class = "info_title_center_text" >
							    <h4>Оборудование, при помощи которого вы вышли в сеть</h4>
							</div>
						</div> <!-- info_title_center -->	
						
				        <div class = "info_title_right" >
					    </div>
						
		            </div> <!-- info_title -->	
					
					<div class ="block_item" >
					<div class = "title_item" >
						<p>Подразделение, за которым закреплено оборудование</p>	
				 	</div>	
				 	
					<div class ="select">
					    <SELECT name = "whose" size=1>
                            <OPTION selected value=<?php echo htmlspecialchars($whose) ?> >Выберите вариант из списка</OPTION>
                            <OPTION value="Кафедра Радиофизики">Кафедра Радиофизики</OPTION>
                            <OPTION value="Кафедра Радиоэлектроники">Кафедра Радиоэлектроники</OPTION>
                            <OPTION value="Кафедра Полупроводниковой электроники">Кафедра Полупроводниковой электроники</OPTION>
                            <OPTION value="Кафедра Оптико-электронных систем и дистанционного зондирования">Кафедра Оптико-электронных систем и дистанционного зондирования</OPTION>
                            <OPTION value="Кафедра Радиофизики">Кафедра Квантовой электроники и фотоники</OPTION>
						    <OPTION value="Кафедра Информационных технологий в исследовании дискретных структур">Кафедра Информационных технологий в исследовании дискретных структур</OPTION>
                            <OPTION value="Кафедра Космической физики и экологии">Кафедра Космической физики и экологии</OPTION>
                        </SELECT>
					</div>		
					
					<div class = "other" >
					    <div class = "other_text" >
					    	<p>Либо укажите другое</p>
						</div>
						<div class ="input">
                            <input class = "input3" name="whose2" type="text"  value="<?php echo htmlspecialchars($whose2) ?>"/>
						</div>
				    </div>
					</div>
					
					<div class ="block_item" >
					<div class = "title_item" >
						<p>Тип оборудования</p>	
				 	</div>
					<div class ="select">
					    <SELECT name = "type" size=1>
                            <OPTION selected value=<?php echo htmlspecialchars($type) ?>>Выберите вариант из списка</OPTION>
                            <OPTION value="Стационарный компьютер">Стационарный компьютер</OPTION> 
                            <OPTION value="Ноутбук">Ноутбук</OPTION>
                            <OPTION value="Планшет либо телефон">Планшет либо телефон</OPTION>
                        </SELECT>
					</div>		
					
					<div class = "other" >
					    <div class = "other_text" >
                            <p>Либо укажите другое</p>
						</div>
						<div class ="input">
                            <input class = "input3" name="type2" type="text"  value="<?php echo htmlspecialchars($type2) ?>"/>
						</div>
				    </div>
				    </div>
					
					<div class ="block_item" >
					<div class = "title_item" >
						<p>Подключен к сети факультета</p>	
				 	</div>
					<div class ="select">
					    <SELECT name = "typeConnection" size=1>
                            <OPTION selected value=<?php echo htmlspecialchars($typeConnection) ?>>Выберите вариант из списка</OPTION>
                            <OPTION value="Непосредственно">Непосредственно</OPTION> 
                            <OPTION value="Через маршрутизатор">Через маршрутизатор</OPTION>
                            <OPTION value="Не знаю">Не знаю</OPTION>
                        </SELECT>
					</div>
                    </div>					
					
                    <div class ="block_item" >

					<div class = "other" >
					    <div class = "other_text2" >
                            <p>
                               Место расположения стационарного компьютера. Если устройство портативное, то расположение рабочего места ответственного за это устройство лица
                            </p>
						</div>
						<div class ="input">
                            <input class = "input2" name="where" type="text"  value="<?php echo htmlspecialchars($where) ?>"/>
						</div>
				    </div>
				    </div>
					
		     	</div> <!-- info_text -->		     
		    </div> <!-- info_block -->

		    <div class = "info_block" >

		        <div class = "info_text" >

					<div class = "info_title" >
					
				        <div class = "info_title_left" >
					    </div>
						
				        <div class = "info_title_center" >
                            <div class = "info_title_center_text" >
							    <h4>Ответственное за оборудование лицо</h4>
							</div>
						</div> <!-- info_title_center -->	
						
				        <div class = "info_title_right" >
					    </div>
						
		            </div> <!-- info_title -->	
					
					<div class ="block_item" >
					
					    <div class = "fields" >						
						    <div class = "field_str" >							
							    <div id = "surname" >
								    <p>Фамилия</p>
								</div>
								<div class = "input" >
							        <input class = "field_input" name="surname" type="text"  value="<?php echo htmlspecialchars($surname) ?>"/>
							    </div>
							</div>						
						</div>
						
					    <div class = "fields" >						
						    <div class = "field_str" >							
							    <div id = "name" >
								    <p>Имя</p>
								</div>
								<div class = "input" >
							        <input class = "field_input" name="name" type="text"  value="<?php echo htmlspecialchars($name) ?>"/>
							    </div>
							</div>						
						</div>
						
					    <div class = "fields" >						
						    <div class = "field_str" >							
							    <div id = "patronymic" >
								    <p>Отчество</p>
								</div>
								<div class = "input" >
							        <input class = "field_input" name="patronymic" type="text"  value="<?php echo htmlspecialchars($patronymic) ?>"/>
							    </div>
							</div>						
						</div>
					   
					</div>
					
					<div class ="block_item" >
					<div class = "title_item" >
					    <p>Кем является ответственное лицо</p>		
				 	</div>
					<div class ="select">
					    <SELECT name = "who" size=1>
                            <OPTION selected value=<?php echo htmlspecialchars($who) ?>>Выберите вариант из списка</OPTION>
                            <OPTION value="Студент">Студент</OPTION> 
                            <OPTION value="Преподаватель">Преподаватель</OPTION>
                            <OPTION value="Гость">Гость</OPTION>
                            <OPTION value="Сотрудник">Сотрудник</OPTION>
                        </SELECT>
					</div>
					</div>
					
					<div class ="block_item" >
					<div class = "title_item" >
					    <p>Контактные данные для экстренной связи в случе ЧП или важных уведомлений</p>		
				 	</div>
					    <div class = "fields" >						
						    <div class = "field_str" >							
							    <div id = "phone" >
								    <p>Телефон</p>
								</div>
								<div class = "input" >
							        <input class = "field_input" name="phone" type="text"  value="<?php echo htmlspecialchars($phone) ?>"/>
							    </div>
							</div>						
						</div>
						
					    <div class = "fields" >						
						    <div class = "field_str" >							
							    <div id = "email" >
								    <p>email</p>
								</div>
								<div class = "input" >
							        <input class = "field_input" name="email" type="text"  value="<?php echo htmlspecialchars($email) ?>"/>
							    </div>
							</div>						
						</div>					   
					</div>
					
				    </div>
					
		     	</div> <!-- info_text -->		     

		    <div class = "info_block" >

		        <div class = "info_text" >

					<div class = "info_title" >
					
				        <div class = "info_title_left" >
					    </div>
						
				        <div class = "info_title_center" >
                            <div class = "info_title_center_text" >
							    <h4>Примечание (если вы хотите указать допоплнительные сведения)</h4>
							</div>
						</div> <!-- info_title_center -->
						
				        <div class = "info_title_right" >
					    </div>						
		            </div> <!-- info_title -->	

					<div id = "info_block_textarea" >
					    <textarea class = "textarea" name="notes" wrap="virtual" cols="40" rows="3"><?php echo htmlspecialchars($notes) ?></textarea>
					</div>
					
		     	</div> <!-- info_text -->		     
		    </div> <!-- info_block -->
			<p>ОБРАЩАЕМ ВАШЕ ВНИМАНИЕ! В случае предоставлении заведомо ложных сведений устройство будет лишено доступа в сеть до вашего личного визита в Лабораторию автоматизации радиофизических исследований.</p>
			<div id = "button_wrap" >
				<input class = "button" name="send" type="submit" value="Отправить ответ"/>
			</div>
    </form> 
	    <?php
   // echo implode('<br>', $info) .'<br>';

    }else{
?>

		    <div class = "info_block" >

		        <div class = "info_text_greeting" >

					<div class = "info_title" >
					
				        <div class = "info_title_left" >
					    </div>
						
				        <div class = "info_title_center" >
                            <div class = "info_title_center_greeting" >
							    <p>
			                        <?php
			                            echo "Здравствуйте!";
			                        ?>
			                    </p>
							</div>
						</div> <!-- info_title_center -->	
						
				        <div class = "info_title_right" >
					    </div>
						
		            </div> <!-- info_title -->	

			        <p>
			        	Вы уже зарегистрированы в компьютерной сети радиофизического факультета. Если вы попали сюда при попытке выйти в Интернет, то обратитесь к системному администратору.
	                </p>
		     	</div> <!-- info_text -->		     
		    </div> <!-- info_block -->

<?php
}
?>

		</div> <!-- content -->		
	</div> <!-- wrapper -->
	<div id = "footer" >
	
        <div id = "footer_info" >
	        <p>По всем вопросам обращайтесь в Лабораторию автоматизации радиофизических исследований. Ауд 307 11 уч.к.</p>

		</div>
	</div>
</body>
</html>
<?php
}
?>
