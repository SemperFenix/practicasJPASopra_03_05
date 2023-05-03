package com.pgrsoft.polloshermanados.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "ESTABLECIMIENTOS")
public class Establecimiento implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    private Long codigo;

    @Column(name = "NOMBRE_COMERCIAL")
    private String nombre;
    private DatosContacto datosContacto;
    private Direccion direccion;

    private Date fechaInauguracion;
    private Date fechaCierre;

    private Time horarioApertura;
    private Time horarioCierre;

    public Establecimiento() {
    }

    public Long getCodigo() {
        return codigo;
    }

    public void setCodigo(Long codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public DatosContacto getDatosContacto() {
        return datosContacto;
    }

    public void setDatosContacto(DatosContacto datosContacto) {
        this.datosContacto = datosContacto;
    }

    public Direccion getDireccion() {
        return direccion;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    public Date getFechaInauguracion() {
        return fechaInauguracion;
    }

    public void setFechaInauguracion(Date fechaInauguracion) {
        this.fechaInauguracion = fechaInauguracion;
    }

    public Date getFechaCierre() {
        return fechaCierre;
    }

    public void setFechaCierre(Date fechaCierre) {
        this.fechaCierre = fechaCierre;
    }

    public Time getHorarioApertura() {
        return horarioApertura;
    }

    public void setHorarioApertura(Time horarioApertura) {
        this.horarioApertura = horarioApertura;
    }

    public Time getHorarioCierre() {
        return horarioCierre;
    }

    public void setHorarioCierre(Time horarioCierre) {
        this.horarioCierre = horarioCierre;
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
        Establecimiento other = (Establecimiento) obj;
        return Objects.equals(codigo, other.codigo);
    }

    @Override
    public String toString() {
        return "Establecimiento [codigo=" + codigo + ", nombre=" + nombre + ", datosContacto=" + datosContacto
                + ", direccion=" + direccion + ", fechaInauguracion=" + fechaInauguracion + ", fechaCierre="
                + fechaCierre + ", horarioApertura=" + horarioApertura + ", horarioCierre=" + horarioCierre + "]";
    }

}
