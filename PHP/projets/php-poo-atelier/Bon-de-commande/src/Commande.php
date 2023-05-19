<?php
require_once "./src/Entreprise.php";
require_once "./src/Client.php";
require_once "./src/Contient.php";

class Commande {
    private int $numCommande;
    private DateTime $dateCommande;
    private string $modalitePaiement;
    private string $modePaiement;

    private Entreprise $entreprise;
    private Client $client;
    /**
     * @var Contient[]
     */
    private array $contients;

    /**
     * @param int $numCommande
     * @param DateTime $dateCommande
     * @param string $modalitePaiement
     * @param string $modePaiement
     * @param Client $client
     */
    public function __construct(int $numCommande, DateTime $dateCommande, string $modalitePaiement, string $modePaiement, Client $client)
    {
        $this->numCommande = $numCommande;
        $this->dateCommande = $dateCommande;
        $this->modalitePaiement = $modalitePaiement;
        $this->modePaiement = $modePaiement;
        $this->client = $client;
    }

    public function ajouterProduit(Produit $produit, int $quantite) : void {
        $contient = new Contient($quantite,$produit);
        $this->contients[] = $contient ;
    }


    public function totalHT() : float{
        $total = 0;
        $produits = $this->contients;
        foreach ($produits as $produit) {
            $total += $produit->getProduit()->getPrixHT() * $produit->getQuantite();
        }
        return $total;
    }

    public function totalTVA() : float{
        $total = 0;
        $produits = $this->contients;
        foreach ($produits as $produit) {
            $tva =  $produit->getProduit()->getTauxTVA() / 100;
            $prixTotal = $produit->getQuantite() * $produit->getProduit()->getPrixHT();
            $total += $tva * $prixTotal;
        }
        return $total;
    }

    public function totalTTC() : float {
        return $this->totalTVA() + $this->totalHT();
    }

    public function editer() : string {
        $affichageProduit = "";
        foreach ($this->contients as $contient) {
            // Calcul du total TVA par article
            $tva =  $contient->getProduit()->getTauxTVA() / 100;
            $prixTotal = $contient->getQuantite() * $contient->getProduit()->getPrixHT();
            $totalTVA = $tva * $prixTotal;
            $totalTTC = $totalTVA + $prixTotal;

            $affichageProduit .= "      ".$contient->getProduit()->getReferenceProduit()." - ".$contient->getProduit()->getNomProduit().
                " - ".$contient->getQuantite()." - ".$contient->getProduit()->getUnite().
                " - ".$contient->getProduit()->getPrixHT()." € - ".$contient->getProduit()->getTauxTVA()." % - ".
                "$totalTVA € - $totalTTC €".PHP_EOL;

        }
        return "Commande n°$this->numCommande du ".$this->dateCommande->format("d/m/Y").PHP_EOL.
            "Client : ".$this->client->getNomClient()."(".$this->client->getNumClient().")".PHP_EOL.
            "      ".$this->client->getRueClient().PHP_EOL.
            "      ".$this->client->getCodePostaleClient()." ".$this->client->getVilleClient().PHP_EOL.
            PHP_EOL.
            "$affichageProduit".PHP_EOL.
            "            Total HT : ".$this->totalHT()." €".PHP_EOL.
            "            Total TVA : ".$this->totalTVA()." €".PHP_EOL.
            "            Total TTC : ".$this->totalTTC()." €";
    }


    /**
     * @return array
     */
    public function getContients(): array
    {
        return $this->contients;
    }





}