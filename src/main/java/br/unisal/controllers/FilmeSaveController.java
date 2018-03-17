      
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
import br.unisal.model.Genero;
import br.unisal.util.Constantes;
import java.util.Enumeration;

@WebServlet(name = "FilmeSaveController", description = "Controlador para inserir filmes", urlPatterns = "/salvarFilme")
public class FilmeSaveController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2380365497770693025L;
	
	private static final FilmeDAO FILME_DAO = FilmeDAO.getInstance();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
             Filme filme = new Filme(
                    req.getParameter("nome"),
                    req.getParameter("imagem"),
                    req.getParameter("descricao"),
                    req.getParameter("genero"));


		List<Filme> filmes = new ArrayList<>();
		
		try {
			FILME_DAO.insert(filme);
			
			filmes = FILME_DAO.findAll();
		
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.toString());
		}
				
		req.setAttribute("filmes", filmes);
		req.getRequestDispatcher(Constantes.raizPages + "filme.jsp").forward(req, resp);
	}
        
      /*   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		req.getRequestDispatcher(Constantes.raizPages + "addFilme.jsp").forward(req, resp);
	}
        */
        @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		req.setAttribute("genero", Genero.values());
		req.getRequestDispatcher(Constantes.raizPages + "addFilme.jsp").forward(req, resp);
	}

}
