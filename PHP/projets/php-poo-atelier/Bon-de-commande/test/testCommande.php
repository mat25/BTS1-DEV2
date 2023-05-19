<?php

require_once "./src/Client.php";
require_once "./src/Produit.php";
require_once "./src/Commande.php";

$client = new Client(1,"cleint1","4 rut test",25000,"Besancon","0897841");

$produit1 = new Produit(1,"Clavier",10,20,"pcs");
$produit2 = new Produit(3,"Souris",5,20,"pcs");


$commande = new Commande(2,new DateTime(),"30 jours","CB",$client);

$commande->ajouterProduit($produit1,2);
$commande->ajouterProduit($produit2,1);


echo $commande->editer();



