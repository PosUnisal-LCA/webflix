/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unisal.model;

import br.unisal.util.GsonSingleton;
import br.unisal.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 *
 * @author aluno6
 */


public class Filme {
    private Long id;
    private  String uuid ;
    private String nome ;
    private String imagem;
    private String descricao;
    private String genero;
    

    public Filme(String uuid, String nome, String imagem, String descricao, String genero) {
        this.uuid = Util.UUIDGenerate();
        this.nome = nome;
        this.imagem = imagem;
        this.descricao = descricao;
        this.genero = genero;
    }


    public Filme() {
        this.uuid = Util.UUIDGenerate();
       
    }

        public Filme(String Nome, String imagem, String descricao, String genero) {
        this.nome = Nome;
        this.uuid = Util.UUIDGenerate();
        this.imagem = imagem;
        this.descricao = descricao;
        this.genero = genero;
    }



    public Long getId() {
        return id;
    }
    public String getUuid() {
        return uuid;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public String toString() {
       return GsonSingleton.getInstance().toJson(this);
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public void setNome(String Nome) {
        this.nome = Nome;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getGenero() {
        return genero;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    

    
}
