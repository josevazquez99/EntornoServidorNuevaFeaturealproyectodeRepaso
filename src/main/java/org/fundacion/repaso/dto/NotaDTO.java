package org.fundacion.repaso.dto;

import org.fundacion.repaso.persistance.model.Nota;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class NotaDTO {
    private Long id;
    private String nombreTrabajo;
    private float calificacion;
    private Long asignaturaNota;

    public NotaDTO(Nota n) {
        this.id = n.getNotaId();
        this.calificacion = n.getCalificacion();
        this.nombreTrabajo = n.getNombreTrabajo();
        this.asignaturaNota = n.getAsignaturaNota() != null ? n.getAsignaturaNota().getAsignaturaId() : null; 
    }
}
