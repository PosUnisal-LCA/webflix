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
import br.unisal.dao.UsuarioDAO;
import br.unisal.model.Usuario;
import br.unisal.util.Constantes;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "UsuarioDeleteController", description = "Controlador para excluir usuários", urlPatterns = "/excluirUsuario")
public class UsuarioDeleteController extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 2380365497770693025L;

    private static final UsuarioDAO USUARIO_DAO = UsuarioDAO.getInstance();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Usuario usuario = new Usuario();
          String ids= req.getParameter("id") ;
          long id = Long.parseLong(ids);
          
        try {
            usuario = USUARIO_DAO.findById(id);
             USUARIO_DAO.delete(id);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuarioUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        }

        List<Usuario> usuarios = new ArrayList<>();

        try {
           

            usuarios = USUARIO_DAO.findAll();

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.toString());
        }

        req.setAttribute("usuario", usuarios);
        req.getRequestDispatcher(Constantes.raizPages + "usuario.jsp").forward(req, resp);
    }

}

