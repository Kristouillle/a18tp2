package com.example.tp2;


import java.util.List;

public interface IEtudiant_DAO {
    void creerEtudiant(Etudiant etudiant);
    void supprimerEtudiant(Etudiant etudiant);
    List<Etudiant> readEtudiant();
    Etudiant updateEtudiant(Etudiant etudiant);
}
