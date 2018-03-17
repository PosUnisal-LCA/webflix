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

@WebServlet(name = "UsuarioInsertController", description = "Controlador para inserir usuários", urlPatterns = "/salvarUsuario")
public class UsuarioInsertController extends HttpServlet{

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
		Usuario usuario = new Usuario(req.getParameter("nome"), 
				req.getParameter("email"), 
				req.getParameter("login"), 
				req.getParameter("senha"));
		
		List<Usuario> usuarios = new ArrayList<>();
		
		try {
			login = USUARIO_DAO.insertLogin(usuario);
			
		
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.toString());
		}
                if (login){
                try {			
                    filmes = FILME_DAO.findAll();
                                
                    req.setAttribute("filmes", filmes);
                    req.getRequestDispatcher(Constantes.raizPages + "inicio.jsp").forward(req, resp);

                    } catch (ClassNotFoundException | SQLException e) {
                            System.out.println(e.toString());
                    }
                }
                else{

		 mensagem = "Login não disponível";
                 req.setAttribute("mensagem", mensagem);
                 req.getRequestDispatcher(Constantes.raiz + "index.jsp").forward(req, resp);
                }
	}

  
}
