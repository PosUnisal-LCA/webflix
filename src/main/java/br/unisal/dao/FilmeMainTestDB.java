package br.unisal.dao;

import java.io.IOException;
import java.sql.SQLException;

import br.unisal.model.Filme;
import br.unisal.model.Genero;
import java.util.List;

public class FilmeMainTestDB {
	
	private static final FilmeDAO FILME_DAO = FilmeDAO.getInstance();

	public static void main(String[] args) throws ClassNotFoundException, SQLException, IOException {
		Filme filme = new Filme("Os Vingadores","MLB-715978410-poster-a3-do-filme-gladiador-_JM.html","dvjndv skjcnckdsjvckksddcksdcvkbdekc",Genero.Ação.toString());
		FILME_DAO.insert(filme);
		
            //USUARIO_DAO.findAll().forEach(u -> u.toString());
            List<Filme> filmes= FILME_DAO.findAll();
            for (Filme f : filmes){
                System.out.println(f.toString());
            }
            
	}

}
