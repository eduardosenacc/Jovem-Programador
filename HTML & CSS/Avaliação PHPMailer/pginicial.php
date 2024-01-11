<?php
session_start();

if(isset($_POST['username'],$_POST['password'])){
    if($_POST['username']=='admin' && $_POST['password']=='Admin123'){
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $_POST['username'];
    }
    else{
        header("Location: login.html");
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Inicial</title>
    <link rel="stylesheet" type="text/css" href="css/stylepginicial.css" media="screen" />
</head>
<body>
    <header>
        <h1>Gula Verde</h1>
        <div class="user-info">
            <p>Bem-vindo, <?php echo $_SESSION['username']; ?>!</p>
            <a href="logout.php" class="logout-btn">Sair</a>
        </div>
    </header>
    <div class="container">
        <p>"Gula Verde" é uma empresa inovadora que está revolucionando a indústria alimentícia 
        com sua abordagem sustentável e deliciosa. Nosso foco principal é a criação de sobremesas e 
        lanches deliciosos que são 100% amigos do meio ambiente. Especialmente, produzimos um produto incrível chamado "Delícias Verdes," que são bolachas ou biscoitos deliciosos e totalmente orgânicos.
        <br><br>
        O que torna a "Gula Verde" verdadeiramente única é o uso de ingredientes provenientes de fontes sustentáveis e embalagens amigas do ambiente. Cada "Delícia Verde" é embalada em materiais 
        biodegradáveis e, melhor ainda, a embalagem é projetada para ser replantada em solo fértil. Quando a embalagem se decompõe, as sementes contidas nela começam a crescer, transformando-se em 
        plantas, criando um ciclo completo de sustentabilidade.
        <br><br>
        Nossa missão é satisfazer o desejo das pessoas por guloseimas saborosas enquanto ajudamos a preservar o meio ambiente. Cada mordida em uma "Delícia Verde" não só satisfaz seu paladar, mas 
        também contribui para a restauração do ecossistema. A "Gula Verde" está comprometida em tornar o mundo um lugar mais doce e verde, um biscoito de cada vez.
        <br><br>
        Junte-se a nós e experimente o sabor da sustentabilidade com as deliciosas "Delícias Verdes" da "Gula Verde"!</p>
    </div>
</body>
</html>





