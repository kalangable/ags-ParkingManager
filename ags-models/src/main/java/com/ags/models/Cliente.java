package com.ags.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cliente {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	private Long id;
	@Column( name = "codigo" )
	private Long cdCliente;

	@Column( name = "descricao" )
	private String dsCliente;

	@Column( name = "data_inicial" )
	private Date dtInicio;

	@Column( name = "status" )
	private String status;

	@Column( name = "documento" )
	private String documento;

	@Column( name = "telefone" )
	private String telefone;

	@Column( name = "endereco" )
	private String endereco;

	@Column( name = "data_final" )
	private Date dtFinal;

	public Long getId() {
		return id;
	}

	public void setId( Long id ) {
		this.id = id;
	}

	public Long getCdCliente() {
		return cdCliente;
	}

	public void setCdCliente( Long cdCliente ) {
		this.cdCliente = cdCliente;
	}

	public String getDsCliente() {
		return dsCliente;
	}

	public void setDsCliente( String dsCliente ) {
		this.dsCliente = dsCliente;
	}

	public Date getDtInicio() {
		return dtInicio;
	}

	public void setDtInicio( Date dtInicio ) {
		this.dtInicio = dtInicio;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus( String status ) {
		this.status = status;
	}

	public String getDocumento() {
		return documento;
	}

	public void setDocumento( String documento ) {
		this.documento = documento;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone( String telefone ) {
		this.telefone = telefone;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco( String endereco ) {
		this.endereco = endereco;
	}

	public Date getDtFinal() {
		return dtFinal;
	}

	public void setDtFinal( Date dtFinal ) {
		this.dtFinal = dtFinal;
	}
}
