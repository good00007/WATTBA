// Get modal element
var modal = document.getElementById('modal');
// Get open modal button
var modalBtn = document.getElementById('modalBtn');
// Get close button
var closeBtn = document.getElementsByClassName('closeBtn')[0];

// listen for click
modalBtn.addEventListener('click',openModal);

// listen for close click
closeBtn.addEventListener('click',closeModal);

// listen for outside click
window.addEventListener('click',clickOutside);

//Function to open modal
function openModal(){
	modal.style.display = 'block';
}

//Function to close modal
function closeModal(){
	modal.style.display = 'none';
}

//Function to close modal if outside click
function clickOutside(e){
	if(e.target == modal){
	modal.style.display = 'none';
	}
	console.log('closing modal');
}