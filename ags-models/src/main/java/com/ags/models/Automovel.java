package com.ags.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Automovel {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	private Long id;
	@Column( length = 10 )
	private String placa;
	@Column( length = 60 )
	private String descricao;
	public Long getId() {
		return id;
	}
	public void setId( Long id ) {
		this.id = id;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca( String placa ) {
		this.placa = placa;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao( String descricao ) {
		this.descricao = descricao;
	}

}
