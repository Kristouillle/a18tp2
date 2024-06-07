package com.example.tp2;

import jakarta.persistence.*;

@Entity
@Table(name ="Etudiant")
public class Etudiant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer Id;
    @Column(name = "nom")
    private String nom;
    @Column(name = "prenom")
    private String prenom;
    @Column(name = "specialite")
    private String specialite;

    /***Empty***/
    public Etudiant() {
    }

    /***Contructor***/
    public Etudiant(String nom, String prenom, String specialite) {
        this.nom = nom;
        this.prenom = prenom;
        this.specialite = specialite;
    }

    /***Getters***/
    public String getNom() {return nom;}
    public String getPrenom() {return prenom;}
    public String getSpecialite() {return specialite;}

    /***Setters***/
    public void setNom(String nom) {this.nom = nom;}
    public void setPrenom(String prenom) {this.prenom = prenom;}
    public void setSpecialite(String specialite) {this.specialite = specialite;}

    /***ToString***/
    @Override
    public String toString(){return String.format("Nom: %s , Prénom: %s , Spécialité: %s", nom, prenom , specialite);}

}
