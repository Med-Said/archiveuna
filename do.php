<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<a href="do.php?var1=med&amp;var2=said">the link</a>
    <?php

    if(isset($_GET['var1']))
    {
        echo $_GET['var1'];
        $var = $_GET['var1'];
    }


    if(isset($_GET['var2']))
    {
        echo $var;
    }
    ?>
</body>
</html>