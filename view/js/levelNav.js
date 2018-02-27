
//affichage du semester lorsqu'on click sur le filiere

var filieres = document.getElementsByClassName('filiere');
var i,j;
for(i = 0,j = filieres.length; i < j; i++)
{
	filieres[i].addEventListener('click',function (e) {
	//e: click, currentTarget: td , nextElementSibling: sOne
	var sOne = e.currentTarget.nextElementSibling;
	var sTwo = e.currentTarget.previousElementSibling;

	sOne.style.visibility ='initial';
	sTwo.style.visibility ='initial';
	})
}