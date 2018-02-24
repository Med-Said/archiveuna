<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>UNA archive</title>
    <link rel="stylesheet" type="text/css" href="view/css/generalView.css">
</head>
<body>
    <div>
        <nav id="mainNav">
            <ul>
                <li>COURS</li>
                <li>TD</li>
                <li>TP</li>
                <li>TEST</li>
                <li>EXAMEN</li>
            </ul>
        </nav>
    </div>
    <section id="sectionNav"><!-- this section containt degrees nav (l1 l2 ...)-->
        <div id="divNavLevel">
            <nav>
                <ul id="ulLevel">
                    <li><a href="index.php?level=L1">L1</a></li>
                    <li><a href="index.php?level=L2">L2</a></li>
                    <li><a href="index.php?level=L3">L3</a></li>
                </ul>
            </nav>
        </div>
        <div>
            <!-- showing filieres -->
            <table>
            <?php
                require_once("model/selection.php");
                if(isset($_GET['level']))
                {
                    $level = htmlspecialchars($_GET['level']);
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

                    $filiers = selectFiliere($level);
                    while($filiere = $filiers->fetch_assoc())
                    {
            ?>      <tr>
                        <td><a href="index.php?level=<?php echo $level;?>&amp;s=<?php echo $two;?>&amp;filiere=<?php echo $filiere['nomf'];?>"><?php echo $two; ?></a></td>
                        <td><a href="index.php?filiere=<?php echo $filiere['nomf'];?>"><?php echo $filiere['nomf']; ?></a></td>
                        <td><a href="index.php?level=<?php echo $level;?>&amp;s=<?php echo $one;?>&amp;filiere=<?php echo $filiere['nomf'];?>"><?php echo $one; ?></a></td>  
                    </tr>         
            <?php        }
                } 
            ?> 
            </table>
        </div>
    </section>
    <!-- the main section for displaying image(td,td ..) -->
    <section id="sectionContent">
        <div id="divMatiere">
            <ul>
                <?php
                if(isset($_GET['level']) and isset($_GET['filiere']) and isset($_GET['s']))
                {
                    $secureFiliere = htmlspecialchars($_GET['filiere']);
                    $secureS = str_replace("S","",htmlspecialchars($_GET['s']));
                    $matieres = selectMatiere($secureFiliere,$secureS);
                    while($matiere = $matieres->fetch_assoc())
                    {
                ?>  <li><a href="index.php?matiere=<?php echo $matiere['nomm'];?>&amp;level=<?php echo $level;?>&amp;s=<?php echo $_GET['s'];?>&amp;filiere=<?php echo $secureFiliere;?>"><?php echo $matiere['nomm'];?></a></li>
                <?php
                    }
                }
                ?>
            </ul>
        </div>
        <div id="divImage">
               <?php
               if(isset($_GET['matiere']) && isset($_GET['level']) && isset($_GET['s']) && isset($_GET['filiere'])) 
               {
                   $level = htmlspecialchars($_GET['level']);
                   $filiere = htmlspecialchars($_GET['filiere']);
                   $s = str_replace("S","",htmlspecialchars($_GET['s']));
                   $matiere = htmlspecialchars($_GET['matiere']);
                   $examens = selectExamen($matiere,$s);//$matiere = nomm

                   while($examen = $examens->fetch_assoc())
                   {
                ?>
                    <img width="600" src="view/imgs/examen/sujet/<?php echo $examen['examen'];?>" alt="">
                <?php   }
               }
               ?>
        </div>
    </section>
</body>
</html>