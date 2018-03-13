package br.unisal.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.unisal.dao.FilmeDAO;
import br.unisal.model.Filme;
import br.unisal.util.Constantes;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "FilmeDeleteController", description = "Controlador para excluir filmes", urlPatterns = "/excluirFilme")
public class FilmeDeleteController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 2380365497770693025L;

    private static final FilmeDAO FILME_DAO = FilmeDAO.getInstance();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Filme filme = new Filme();
          String ids= req.getParameter("id") ;
          long id = Long.parseLong(ids);
          
        try {
            filme = FILME_DAO.findById(id);
             FILME_DAO.delete(id);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FilmeUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FilmeUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        }

        List<Filme> filmes = new ArrayList<>();

        try {
           

            filmes = FILME_DAO.findAll();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
        }

        req.setAttribute("filme", filmes);
        req.getRequestDispatcher(Constantes.raizPages + "filme.jsp").forward(req, resp);
    }

}
