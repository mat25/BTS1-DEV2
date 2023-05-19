<?php

class Entreprise {
    private string $nomEntreprise;
    private string $rueEntreprise;
    private int $codePostaleEntreprise;
    private string $villeEntreprise;
    private string $telephoneEntreprise;
    private string $logoEntreprise;

    /**
     * @param string $nomEntreprise
     * @param string $rueEntreprise
     * @param int $codePostaleEntreprise
     * @param string $villeEntreprise
     * @param string $telephoneEntreprise
     * @param string $logoEntreprise
     */
    public function __construct(string $nomEntreprise, string $rueEntreprise, int $codePostaleEntreprise, string $villeEntreprise, string $telephoneEntreprise, string $logoEntreprise)
    {
        $this->nomEntreprise = $nomEntreprise;
        $this->rueEntreprise = $rueEntreprise;
        $this->codePostaleEntreprise = $codePostaleEntreprise;
        $this->villeEntreprise = $villeEntreprise;
        $this->telephoneEntreprise = $telephoneEntreprise;
        $this->logoEntreprise = $logoEntreprise;
    }


}