function showError(container, errorMessage) {

  container.className = 'error';
  var msgElem = document.createElement('span');
  msgElem.className = "error-message";
  msgElem.innerHTML = errorMessage;
  container.appendChild(msgElem);
}

function resetError(container) {
	

   container.className = '';

  if (container.lastChild.className == "error-message") {
    container.removeChild(container.lastChild);
  }
}

function resetError(container) {
	
   container.className = '';

  if (container.lastChild.className == "error-message") {
    container.removeChild(container.lastChild);
  }
}

function validate_form(form) {
  var elems = form.elements;
  var classElements = elems.className;
  var valid = true;

  resetError(elems.whose.parentNode);
  resetError(elems.whose2.parentNode);

  if (!elems.whose.value && !elems.whose2.value) {
    showError(elems.whose.parentNode, '*');
    showError(elems.whose2.parentNode, '*');
	valid = false;
  }

  resetError(elems.type.parentNode);
  resetError(elems.type2.parentNode);

  if (!elems.type.value && !elems.type2.value) {
    showError(elems.type.parentNode, '*');
    showError(elems.type2.parentNode, '*');
	valid = false;
  }
  
  resetError(elems.typeConnection.parentNode);
  if (!elems.typeConnection.value) {
    showError(elems.typeConnection.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.where.parentNode);
  if (!elems.where.value) {
    showError(elems.where.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.surname.parentNode);
  if (!elems.surname.value) {
    showError(elems.surname.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.name.parentNode);
  if (!elems.name.value) {
    showError(elems.name.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.patronymic.parentNode);
  if (!elems.patronymic.value) {
    showError(elems.patronymic.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.who.parentNode);
  if (!elems.who.value) {
    showError(elems.who.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.phone.parentNode);
  if (!elems.phone.value) {
    showError(elems.phone.parentNode, '*');
	valid = false;
  }
  
    resetError(elems.email.parentNode);
  if (!elems.email.value) {
    showError(elems.email.parentNode, '*');
	valid = false;
  }
  
  if(!valid){
	  alert ( "Пожалуйста заполните поля помеченные красным!");
  }
  return valid;
}
