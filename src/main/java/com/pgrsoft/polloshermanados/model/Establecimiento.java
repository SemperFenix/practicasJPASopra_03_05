package com.pgrsoft.polloshermanados.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

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

    private LocalDate fechaInauguracion;

    private LocalDate fechaCierre;

    private LocalTime horarioApertura;

    @Temporal(TemporalType.TIME)
    private LocalTime horarioCierre;

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

    public LocalDate getFechaInauguracion() {
        return fechaInauguracion;
    }

    public void setFechaInauguracion(LocalDate fechaInauguracion) {
        this.fechaInauguracion = fechaInauguracion;
    }

    public LocalDate getFechaCierre() {
        return fechaCierre;
    }

    public void setFechaCierre(LocalDate fechaCierre) {
        this.fechaCierre = fechaCierre;
    }

    public LocalTime getHorarioApertura() {
        return horarioApertura;
    }

    public void setHorarioApertura(LocalTime horarioApertura) {
        this.horarioApertura = horarioApertura;
    }

    public LocalTime getHorarioCierre() {
        return horarioCierre;
    }

    public void setHorarioCierre(LocalTime horarioCierre) {
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
