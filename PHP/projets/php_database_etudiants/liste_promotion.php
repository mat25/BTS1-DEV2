<?php
session_start();
require_once "./src/modele/promotiondb.php";
require_once './src/modele/etudiantDB.php';
require_once './src/utils/dates.php';
$promotions = selectAllpromotion();
$etudiants = selectAllStudents();

?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Contact</title>
</head>
<body>

<div class="container">
    <navigation class="navigation ">
        <div class="logo">
            <a href="index.php"><img src="image/logo.png" alt="logo de l'ecole"></a>
        </div>
        <div class="liste_etudiant">
            <p><a href="index.php">Listes etudiants</a></p>
        </div>
        <div class="liste_formation">
            <p><a href="liste_promotion.php">Listes formations</a></p>
        </div>
        <div class="liste_demande_contact">
            <p><a href="liste_demande_contact.php">Listes contacts</a></p>
        </div>
        <div class="nouvelle-etudiant">
            <p><a href="new_student.php">Nouvel Etudiant</a></p>
        </div>
        <div class="contact">
            <p><a href="contact.php">Contact</a></p>
        </div>
        <div class="sign_up">
            <?php
            if (!isset($_SESSION['connexion']['id'])) { ?>
                <p><a href="sign_in.php">Connexion</a></p>
            <?php } else { ?>
                <form action="sign_in.php" method="post" class="deconnexion">
                    <input type="submit" name="deconnexion" value="Deconnexion">
                </form>
            <?php } ?>

        </div>
    </navigation>

    <header class="header">
        <?php
        if (isset($_SESSION['connexion']['id'])) { ?>
            <div class="page_perso">
                <p>bonjour, <?= $_SESSION['connexion']['prenom']." ".$_SESSION['connexion']['nom']?></p>
            </div>
        <?php } ?>
        <h1>Listes des formations</h1>
    </header>
    <main class="contain">
        <form action="" method="post" enctype="multipart/form-data">
            <label for="promotion">Promotion de l'etudiant</label>
            <select name="promotion" id="promotion">
                <option value="">Aucune promotion</option>
                <?php
                foreach ($promotions as $promotion) { ?>
                    <option value="<?= $promotion["id_promotion"]?>"><?= $promotion["intitule_promotion"]?></option>
                <?php } ?>

                <input type="submit" value="Chercher">
        </form>

        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") { ?>

            <div class="grille">
                <?php foreach ($etudiants as $etudiant) {
                    if ($_POST["promotion"] == $etudiant["id_promotion"]) { ?>
                            <div class="carte">
                                <div class="photo_etudiant">
                                    <img src="image/<?= $etudiant["photo_etudiant"]?>" alt="photo de <?= $etudiant["prenom_etudiant"]." ".$etudiant["nom_etudiant"]?>">
                                </div>
                                <div class="nom_prenom">
                                    <p> <?= ucfirst(strtolower($etudiant["prenom_etudiant"]))?>
                                        <?= strtoupper($etudiant["nom_etudiant"])?></p>
                                </div>
                                <p>
                                    <?php
                                    $age = caclulAge($etudiant["date_naissance_etudiant"]) ;
                                    if ($age >= 18) { ?>
                                <p class="majeur"><?= $age ?> ans</p>
                                <?php } else { ?>
                                    <p class="mineur"><?= $age ?> ans</p>
                                <?php } ?>

                                </p>
                                <p>
                                    <i class="fa-solid fa-calendar-days"></i>
                                    <?=formatDate($etudiant["date_naissance_etudiant"])?>
                                </p>

                                <p class="bouton_detail"><a href="detail-etudiant.php?id=<?=$etudiant["id_etudiant"]?>&page=LP">En savoir plus</a></p>
                            </div>
                    <?php } ?>
                <?php } ?>
            </div>
        <?php } ?>



        
        
    </main>
    <footer class="footer">
        <p>Copyright © 2000-2023 Best Students Inc. Tous droits réservés</p>
    </footer>
</div>
</body>
</html>
