package com.example.tp2;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.spi.PersistenceUnitInfo;
import org.hibernate.jpa.HibernatePersistenceProvider;

import java.util.List;

public class Etudiant_DAO implements IEtudiant_DAO {
    EntityManager entityManager = null;

    public Etudiant_DAO(){
        PersistenceUnitInfo persistenceUnitInfo = new EtudiantPersistenceUnitInfo();
        EntityManagerFactory entityManagerFactory = new HibernatePersistenceProvider()
                .createContainerEntityManagerFactory(persistenceUnitInfo, null);
        this.entityManager = entityManagerFactory.createEntityManager();
    }

    /***********************************
    ***********  C  R  U  D  ***********
    ************************************/
    @Override
    public void creerEtudiant(Etudiant etudiant) {
        EntityTransaction transaction = entityManager.getTransaction();
        try{
            transaction.begin();
            entityManager.persist(etudiant);
            transaction.commit();
        }catch (Exception ex){
            if(transaction.isActive()){
                transaction.rollback();
            }
            ex.printStackTrace();
        }
    }

    @Override
    public List<Etudiant> readEtudiant() {
        Query query = entityManager.createQuery("select e from Etudiant e");
        return query.getResultList();
    }
    @Override
    public Etudiant updateEtudiant(Etudiant etudiant) {
        return null;
    }
    @Override
    public void deleteEtudiant(Etudiant etudiant) {

    }

}
