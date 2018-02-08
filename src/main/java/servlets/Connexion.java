package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Utilisateur;
import forms.ConnexionForm;
/**
 * Servlet qui gère les connexions utilisateurs
 */
public class Connexion extends HttpServlet {
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE = "/index.jsp";
    public static final String VUE_FRONTPAGE = "/WEB-INF/dashboard1.jsp";

    /**
     * Methode de servlet qui gère les requetes Get du client pour la connexion.
     * @param request request permet de scruter la requete du client afin d'effectuer les traitements (Metier) pour la connexion.
     * @param response response permet de repondre au client de facons personnalise pour la connexion.
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
    }

    /**
     * Methode de servlet qui gère les requetes Post du client pour la connexion.
     * @param request request permet de scruter la requete du client afin d'effectuer les traitements (Metier) pour la connexion.
     * @param response response permet de repondre au client de facons personnalise pour la connexion.
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        ConnexionForm form = new ConnexionForm();

        /* Traitement de la requête et récupération du bean en résultant */
        Utilisateur utilisateur = form.connecterUtilisateur(request);

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();
        /* Si aucune erreur de validation a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.*/
        if (form.getErreurs().isEmpty()) {

            session.setAttribute(ATT_FORM, form); // TODO : voir si utile
            session.setAttribute(ATT_SESSION_USER, utilisateur);
            this.getServletContext().getRequestDispatcher(VUE_FRONTPAGE).forward(request, response);
            //response.sendRedirect(request.getContextPath() + VUE_FRONTPAGE);
        } else {
            session.setAttribute(ATT_SESSION_USER, null);
             /* Stockage du formulaire et du bean dans l'objet request */
            request.setAttribute(ATT_FORM, form);
            request.setAttribute(ATT_USER, utilisateur);
            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
            //response.sendRedirect(request.getContextPath() + VUE);
        }

    }
}