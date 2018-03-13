package br.unisal.controllers;

import br.unisal.dao.FilmeDAO;
import br.unisal.model.Filme;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.unisal.util.Constantes;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "filmeController", description = "Inicio", urlPatterns = "/inicio")
public class FilmeController extends HttpServlet {

	private static final long serialVersionUID = 2380365497770693025L;

	private static final FilmeDAO FILME_DAO = FilmeDAO.getInstance();

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		req.getRequestDispatcher(Constantes.raizPages + "inicio.jsp").forward(req, resp);
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
		req.getRequestDispatcher(Constantes.raizPages + "inicio.jsp").forward(req, resp);
	}

}
