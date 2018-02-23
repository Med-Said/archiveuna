<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<?php
require_once("../../model/selection.php");

if(isset($_GET['level']) and isset($_GET['filiere']))
{//on verifie si les donnees envoiyee on bien la 
    $level = htmlspecialchars($_GET['level']);//pour eviter sql injection
    $filiere = htmlspecialchars($_GET['filiere']);
    $one = "";$two = "";
    switch($level)
    {//ici on choixi les simestres selon le niveau envoiyer par la page index
        case "L1":
            $one = "S1"; $two = "S2";
            break;
        case "L2":
            $one = "S3"; $two = "S4";
            break;
        case "L3";
            $one = "S5"; $two = "S6";
            break;
        default: $one = ""; $two = "";
    }
?>

<ul><!--in this link href we send some parameter necessary to $_GET semestere and level-->
    <li><a href="matiere.php?s=<?php echo (str_replace("S","",$one));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere; ?>"><?php echo $one ?></a></li>
    <li><a href="matiere.php?s=<?php echo (str_replace("S","",$two));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere; ?>"><?php echo $two ?></a></li>
</ul>

<?php
    if(isset($_GET['level']) and isset($_GET['s']) and isset($_GET['filiere']))
    {
        $s = htmlspecialchars($_GET['s']);
        $level = htmlspecialchars($_GET['level']);
        $filiere = htmlspecialchars($_GET['filiere']);
        $matieres = selectMatiere($filiere,$s);
        if($matieres)
        {
            while($matiere = $matieres->fetch_assoc())
            {
?>             <ul>
                    <li><a href="matiere.php?s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;nomm=<?php echo $matiere['nomm'] ;?>"><?php echo $matiere['nomm'];?></a></li>
                </ul>
<?php       }
        }
    }
}
?>
<nav>
<ul>
    <li><a href="matiere.php?data=cours&amp;s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere?>&amp;nomm=<?php echo $_GET['nomm']; ?>">COURS</a></li>
    <li><a href="matiere.php?data=td&amp;s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere?>&amp;nomm=<?php echo $_GET['nomm']; ?>">TD</a></li>
    <li><a href="matiere.php?data=tp&amp;s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere?>&amp;nomm=<?php echo $_GET['nomm']; ?>">TP</a></li>
    <li><a href="matiere.php?data=test&amp;s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere?>&amp;nomm=<?php echo $_GET['nomm']; ?>">TEST</a></li>
    <li><a href="matiere.php?data=examen&amp;s=<?php echo (str_replace("S","",$_GET['s']));?>&amp;level=<?php echo $level?>&amp;filiere=<?php echo $filiere?>&amp;nomm=<?php echo $_GET['nomm']; ?>">EXAMEN</a></li>
</ul>
</nav>

<section id="display" style="border: 1px solid black">
<?php
    if(isset($_GET['s']) and isset($_GET['nomm']) )
    {
        $s = htmlspecialchars($_GET['s']);
        $nomm = htmlspecialchars($_GET['nomm']);

//         $data = htmlspecialchars($_GET['data']);

//         switch($data)
//         {
//             case "cours" :
//                 $cours = selectCours($nomm,$s);
//                 while($cour = $cours->fetch_assoc())
//                 {

//                 }
//                 break;
//             case "td" :
//                 $tds = selectTd($nomm,$s);
//                 while($td = $tds->fetch_assoc())
//                 {

//                 }
//                 break;
//             case "tp" : 
//                 $tps = selectTp($nomm,$s);
//                 while($tp = $tps->fetch_assoc())
//                 {

//                 }
//                 break;
//             case "test" :
//                 $tests = selectTest($nomm,$s);
//                 while($test = $tests->fetch_assoc())
//                 {

//                 }
//                 break;
//             case "examen" :
//             $examens = selectExamen($nomm,$s);
//             while($examen = $examens->fetch_assoc())
//             {
// ?>             <img width='1000' height='700' src='../imgs/examen/sujet/<?php echo $examen['examen']; ?>' alt=''>;
// <?php
//                 echo $examen['examen'];
//             }
//                 break;
//             default: 
            $examens = selectExamen($nomm,$s);
            while($examen = $examens->fetch_assoc())
            {
?>             <img width='1000' height='700' src='../imgs/examen/sujet/<?php echo $examen['examen']; ?>' alt=''>;
<?php
                echo $examen['examen'];
            }
        }
    // }
?>
</section>

</body>
</html>