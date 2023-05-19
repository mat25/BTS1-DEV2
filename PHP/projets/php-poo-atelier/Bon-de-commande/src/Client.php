<?php

class Client {
    private int $numClient;
    private string $nomClient;
    private string $rueClient;
    private int $codePostaleClient;
    private string $villeClient;
    private string $telephoneClient;

    /**
     * @param int $numClient
     * @param string $nomClient
     * @param string $rueClient
     * @param string $codePostaleClient
     * @param string $villeClient
     * @param string $telephoneClient
     */
    public function __construct(int $numClient, string $nomClient, string $rueClient, string $codePostaleClient, string $villeClient, string $telephoneClient)
    {
        $this->numClient = $numClient;
        $this->nomClient = $nomClient;
        $this->rueClient = $rueClient;
        $this->codePostaleClient = $codePostaleClient;
        $this->villeClient = $villeClient;
        $this->telephoneClient = $telephoneClient;
    }

    /**
     * @return int
     */
    public function getNumClient(): int
    {
        return $this->numClient;
    }

    /**
     * @return string
     */
    public function getNomClient(): string
    {
        return $this->nomClient;
    }

    /**
     * @return string
     */
    public function getRueClient(): string
    {
        return $this->rueClient;
    }

    /**
     * @return int
     */
    public function getCodePostaleClient(): int
    {
        return $this->codePostaleClient;
    }

    /**
     * @return string
     */
    public function getVilleClient(): string
    {
        return $this->villeClient;
    }

    /**
     * @return string
     */
    public function getTelephoneClient(): string
    {
        return $this->telephoneClient;
    }




}