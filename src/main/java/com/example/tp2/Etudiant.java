package com.example.tp2;

import jakarta.persistence.*;

@Entity
@Table(name ="etudiant")
public class Etudiant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "nom")
    private String nom;
    @Column(name = "prenom")
    private String prenom;
    @Column(name = "specialite")
    private String specialite;

    public Etudiant() {
    }

    // CONSTRUCTEUR
    public Etudiant(Integer id, String nom, String prenom, String specialite) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.specialite = specialite;
    }


    // GETTERS ET SETTERS
    public Integer getId() {return id;}
    public String getNom() {return nom;}
    public String getPrenom() {return prenom;}
    public String getSpecialite() {return specialite;}

    public void setId(Integer id) {this.id = id;}
    public void setNom(String nom) {this.nom = nom;}
    public void setPrenom(String prenom) {this.prenom = prenom;}
    public void setSpecialite(String specialite) {this.specialite = specialite;}

    @Override
    public String toString(){return String.format("Nom: %s , Prénom: %s , Spécialité: %s", nom, prenom , specialite);}

}
