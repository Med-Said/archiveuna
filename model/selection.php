<?php
require_once("connection.php");

function selectFiliere($niveau)
{//fonction pour la section des filiere  par niveau 
    $connection = connection();

    $query = "select * from filiere where niveau = '$niveau'";
    
    $result = $connection->query($query);
    if($result)
    {
        // while($res = $result->fetch_assoc())
        // {
        //     echo $res['nomf'] . "<br>";
        // }
        return $result;
    }
}

selectFiliere("L1");

//fonction pour la selection des matieres par filiere et semestre
function selectMatiere($filiere, $s)
{//s: semestre
    $connection = connection();
    $query = "select nomm from filiere,contien where filiere.nomf = '$filiere' and s='$s' and filiere.nomf = contien.nomf";
    $result = $connection->query($query);
    if($result)
    {
        // while($res = $result->fetch_assoc())
        // {
        //     echo $res['nomm'] . "<br>";
        // }
        return $result;
    }
}

//selectMatiere("INFO",4);

//fonction pour la selection des examen par matiere et semestre
function selectExamen($nomm,$s)
{//nomm : nom de la matiere
    $connection = connection();
    $query = " select examen from examen where nomm = '$nomm' and s='$s'";
    $result = $connection->query($query);
    if($result)
    {
        // while($res = $result->fetch_assoc())
        // {
        //     echo $res['examen'] . "<br>";
        // }
        return $result;
    }
}

//selectExamen("programmation Objet",4);


//fonction pour la selection des test(devoire) par matiere et semestre
function selectTest($nomm,$s)
{//nomm : nom de la matiere
    $connection = connection();
    $query = " select test from test where nomm = '$nomm' and s='$s'";
    $result = $connection->query($query);
    if($result)
    {
        return $result;
    }
}


//fonction pour la selection des tps par matiere et semestre
function selectTp($nomm,$s)
{//nomm : nom de la matiere
    $connection = connection();
    $query = " select tp from tp where nomm = '$nomm' and s='$s'";
    $result = $connection->query($query);
    if($result)
    {
        return $result;
    }
}


//fonction pour la selection des tds par matiere et semestre
function selectTd($nomm,$s)
{//nomm : nom de la matiere
    $connection = connection();
    $query = " select td from td where nomm = '$nomm' and s='$s'";
    $result = $connection->query($query);
    if($result)
    {
        return $result;
    }
}



//fonction pour la selection des cours par matiere et semestre
function selectCours($nomm,$s)
{//nomm : nom de la matiere
    $connection = connection();
    $query = " select cours from cours where nomm = '$nomm' and s='$s'";
    $result = $connection->query($query);
    if($result)
    {
        return $result;
    }
}