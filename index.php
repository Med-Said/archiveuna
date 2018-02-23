<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>archive UNA</title>
</head>
<body>
    <nav>
        <ul>
            <li><a href="index.php?level=l1">L1</a></li>
            <li><a href="index.php?level=l2">L2</a></li>
            <li><a href="index.php?level=l3">L3</a></li>
        </ul>
    </nav>

    <div id="container" style="border: 1px solid black; width: 100%;">
    <?php
        require_once("model/selection.php");
        if(isset($_GET['level']))
        {
            echo $_GET['level'];
            $level = htmlspecialchars($_GET['level']);
            switch($level)
            {
                case "l1":
                    $filieres = selectFiliere("L1");
                    while($filiere = $filieres->fetch_assoc())
                    {
    ?>              <ul>
                       <li><a href="view/pages/matiere.php?level=<?php echo $filiere['niveau']; ?>&amp;filiere=<?php echo $filiere['nomf'];?>"><?php echo $filiere['nomf'] . "<br>";?></a></li>
                    </ul>
    <?php
                    }
                    break;
                case "l2":
                    $filieres = selectFiliere("L2");
                    while($filiere = $filieres->fetch_assoc())
                    {
    ?>              <ul>
                       <li><a href="view/pages/matiere.php?level=<?php echo $filiere['niveau']; ?>&amp;filiere=<?php echo $filiere['nomf'];?>"><?php echo $filiere['nomf'] . "<br>";?></a></li>
                    </ul>
    <?php
                    }
                    break;
                case "l3":
                    $filieres = selectFiliere("L3");
                    while($filiere = $filieres->fetch_assoc())
                    {
    ?>              <ul>
                        <li><a href="view/pages/matiere.php?level=<?php echo $filiere['niveau']; ?>&amp;filiere=<?php echo $filiere['nomf'];?>"><?php echo $filiere['nomf'] . "<br>";?></a></li>
                    </ul>
    <?php
                    }
                break;
                default : ;
            }
        }
    ?>
    </div>
</body>
</html>