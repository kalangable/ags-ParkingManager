package com.ags.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Automovel {

	@Id
	@GeneratedValue( strategy = GenerationType.AUTO )
	private Long id;
	@Column( length = 10 )
	private String placa;
	@Column( length = 60 )
	private String descricao;

}
