package com.pgrsoft.polloshermanados.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.ElementCollection;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="PEDIDOS")
public class Pedido implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	private Long codigo;
	
	@Column(name="FECHA_HORA")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fecha;
	
	@ManyToOne
	@JoinColumn(name="DNI_CAMARERO")
	private Camarero camarero;
	
	@Enumerated(EnumType.STRING)
	private EstadoPedido estado;
	
	@ElementCollection
	@JoinTable(name="LINEAS_PEDIDO",
	           joinColumns = @JoinColumn(name = "CODIGO_PEDIDO"))
	private List<LineaPedido> lineas;
	
	public Pedido() {
		
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Camarero getCamarero() {
		return camarero;
	}

	public void setCamarero(Camarero camarero) {
		this.camarero = camarero;
	}

	public EstadoPedido getEstado() {
		return estado;
	}

	public void setEstado(EstadoPedido estado) {
		this.estado = estado;
	}

	public List<LineaPedido> getLineas() {
		return lineas;
	}

	public void setLineas(List<LineaPedido> lineas) {
		this.lineas = lineas;
	}

	@Override
	public int hashCode() {
		return Objects.hash(codigo);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pedido other = (Pedido) obj;
		return Objects.equals(codigo, other.codigo);
	}

	@Override
	public String toString() {
		return "Pedido [codigo=" + codigo + ", fecha=" + fecha + ", camarero=" + camarero + ", estado=" + estado
				+ ", lineas=" + lineas + "]";
	}

}
