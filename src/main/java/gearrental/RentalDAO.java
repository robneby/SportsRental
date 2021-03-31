package gearrental;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import java.util.*;

public class RentalDAO {
    SessionFactory factory = null;
    Session session = null;

    private static RentalDAO single_instance = null;


    private RentalDAO() {
        factory = HibernateUtils.getSessionFactory();
    }
    // public RentalDAO()
    // {
    //    factory = HibernateUtils.getSessionFactory();
    //}

    public static RentalDAO getInstance()
    {
        if (single_instance == null) {
            single_instance = new RentalDAO();
        }

        return single_instance;
    }


    public List<Rental> getRentals() {

        try {
            session = factory.openSession();
            session.getTransaction().begin();
            String sql = "from gearrental.Rental";
            List<Rental> cs = (List<Rental>) session.createQuery(sql).getResultList();
            session.getTransaction().commit();
            return cs;

        } catch (Exception e) {
            e.printStackTrace();
            // Rollback in case of an error occurred.
            session.getTransaction().rollback();
            return null;
        } finally {
            session.close();
        }

    }

    public List<Rental> addRentalDetails(String name, String email, String gear) {
        try {
            session = factory.openSession();
            session.getTransaction().begin();
            Rental r = new Rental();
            r.setName(name);
            r.setEmail(email);
            r.setGear(gear);
            session.save(r);
            String sql = "from Rental";
            List<Rental> cs = (List<Rental>) session.createQuery(sql).getResultList();
            session.getTransaction().commit();
            return cs;

        } catch (Exception e) {
            e.printStackTrace();
            // Rollback in case of an error occurred.
            session.getTransaction().rollback();
            return null;
        } finally {
            session.close();
        }
    }
}
