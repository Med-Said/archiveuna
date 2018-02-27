

//affichage du semester lorsqu'on click sur le filiere

var filieres = document.getElementsByClassName('filiere');
var i,j;
for(i = 0,j = filieres.length; i < j; i++)
{
	filieres[i].addEventListener('click',function (e) {
		//e: click, currentTarget: td , parentNode: tr

		alert(e.currentTarget.nextElementSibling);
	})
}


