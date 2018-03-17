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

@WebServlet(name = "FilmeUpdateController", description = "Controlador para editar filmes", urlPatterns = "/editaFilme")
public class FilmeUpdateController extends HttpServlet {

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
            filme.setNome(req.getParameter("nome"));
            filme.setDescricao(req.getParameter("descricao"));
            filme.setImagem(req.getParameter("imagem"));
            filme.setGenero(req.getParameter("genero"));
             FILME_DAO.update(filme);
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

        req.setAttribute("filmes", filmes);
        req.getRequestDispatcher(Constantes.raizPages + "filme.jsp").forward(req, resp);
    }
    
           
        @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		List<Filme> filmes = new ArrayList<>();
		
		try {			
			filmes = FILME_DAO.findAll();
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.toString());
		}

		req.setAttribute("filmes", filmes);
		req.getRequestDispatcher(Constantes.raizPages + "filme.jsp").forward(req, resp);
	}
    
    

}
