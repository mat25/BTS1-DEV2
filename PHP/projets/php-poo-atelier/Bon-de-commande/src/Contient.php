<?php
require_once "./src/Produit.php";

class Contient {
    private int $quantite;

    private Produit $produit;

    /**
     * @param int $quantite
     * @param Produit $produit
     */
    public function __construct(int $quantite, Produit $produit)
    {
        $this->quantite = $quantite;
        $this->produit = $produit;
    }

    /**
     * @return int
     */
    public function getQuantite(): int
    {
        return $this->quantite;
    }

    /**
     * @return Produit
     */
    public function getProduit(): Produit
    {
        return $this->produit;
    }



}