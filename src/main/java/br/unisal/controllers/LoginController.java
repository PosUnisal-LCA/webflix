package br.unisal.controllers;

import br.unisal.dao.FilmeDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.unisal.dao.UsuarioDAO;
import br.unisal.model.Filme;
import br.unisal.model.Usuario;
import br.unisal.util.Constantes;
import java.util.logging.Level;
import java.util.logging.Logger;

import br.unisal.util.Constantes;

@WebServlet(name = "LoginController", description = "Controlador para efetivar o login", urlPatterns = "/login")
public class LoginController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2380365497770693025L;
	
	private static final UsuarioDAO USUARIO_DAO = UsuarioDAO.getInstance();
        
        private static final FilmeDAO FILME_DAO = FilmeDAO.getInstance();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
                boolean login = false;
                String mensagem = "";
                
		List<Filme> filmes = new ArrayList<>();
                
		try {
                    
                    login = USUARIO_DAO.findByLogin(req.getParameter("login"), req.getParameter("senha"));
                    if(login == true){
                        try {			
                                filmes = FILME_DAO.findAll();
                                
                                req.setAttribute("filmes", filmes);
                                req.getRequestDispatcher(Constantes.raizPages + "inicio.jsp").forward(req, resp);
                
                        } catch (ClassNotFoundException | SQLException e) {
                                System.out.println(e.toString());
                        }
                    }else{
                        mensagem = "Senha ou Usuario invalido";
                        req.setAttribute("mensagem", mensagem);
                        req.getRequestDispatcher(Constantes.raiz + "index.jsp").forward(req, resp);
                    }
		
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.toString());
		}
				
		
	}


}
