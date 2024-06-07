package com.example.tp2;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name="etudiantServlet", value = "/Etudiant")
public class EtudiantController extends HttpServlet {

    private Etudiant etudiant = new Etudiant();
    private IEtudiant_DAO dao = new Etudiant_DAO();
    private ArrayList<Etudiant> listeEtudiants = new ArrayList<>();

    public void init() {
        listeEtudiants = new ArrayList<>();
        for(Etudiant etudiant : dao.readEtudiant()){
            listeEtudiants.add(etudiant);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        init();
        request.setAttribute("mes_etudiants", listeEtudiants);

        RequestDispatcher dispatcher = request.getRequestDispatcher("afficherEtudiants.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String specialite = request.getParameter("specialite");

        etudiant.setNom(nom);
        etudiant.setPrenom(prenom);
        etudiant.setSpecialite(specialite);

        dao.creerEtudiant(etudiant);

        response.sendRedirect("Etudiant");

    }

    public void destroy(){}
}
