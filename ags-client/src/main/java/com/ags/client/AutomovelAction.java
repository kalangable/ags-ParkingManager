package com.ags.client;

import java.util.List;

import lombok.Data;

import com.ags.dao.AutomovelDao;
import com.ags.models.Automovel;

@Data
public class AutomovelAction {
	private AutomovelDao dao = new AutomovelDao();
	private List<Automovel> listaAutomovel;

	public String list() {
		listaAutomovel = dao.list();
		return "sucess";
	}

}
