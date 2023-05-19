<?php

class Produit  {
    private int $referenceProduit ;
    private string $nomProduit;
    private float $prixHT;
    private float $tauxTVA;
    private string $unite;

    /**
     * @param int $referenceProduit
     * @param string $nomProduit
     * @param float $prixHT
     * @param float $tauxTVA
     * @param string $unite
     */
    public function __construct(int $referenceProduit, string $nomProduit, float $prixHT, float $tauxTVA, string $unite)
    {
        $this->referenceProduit = $referenceProduit;
        $this->nomProduit = $nomProduit;
        $this->prixHT = $prixHT;
        $this->tauxTVA = $tauxTVA;
        $this->unite = $unite;
    }

    /**
     * @return int
     */
    public function getReferenceProduit(): int
    {
        return $this->referenceProduit;
    }

    /**
     * @return string
     */
    public function getNomProduit(): string
    {
        return $this->nomProduit;
    }

    /**
     * @return float
     */
    public function getPrixHT(): float
    {
        return $this->prixHT;
    }

    /**
     * @return float
     */
    public function getTauxTVA(): float
    {
        return $this->tauxTVA;
    }

    /**
     * @return string
     */
    public function getUnite(): string
    {
        return $this->unite;
    }




}