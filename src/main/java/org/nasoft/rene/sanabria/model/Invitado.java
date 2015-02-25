package org.nasoft.rene.sanabria.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Invitado {
	
	@Id
	@GeneratedValue
	private int id_invitado;
	private String idSha1;
	private String nombre;
	private String email;
	
	public Invitado(){}
	
	public String getIdSha1() {
		return idSha1;
	}
	public void setIdSha1(String idSha1) {
		this.idSha1 = idSha1;
	}
	public int getId() {
		return id_invitado;
	}
	public void setId(int id_invitado) {
		this.id_invitado = id_invitado;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
