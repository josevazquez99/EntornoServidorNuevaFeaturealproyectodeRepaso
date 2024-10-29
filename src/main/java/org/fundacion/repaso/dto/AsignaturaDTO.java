package org.fundacion.repaso.dto;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.fundacion.repaso.persistance.model.Alumno;
import org.fundacion.repaso.persistance.model.Asignatura;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AsignaturaDTO {
    private Long id;
    private String asignaturaName;
    private List<AlumnoDTO> alumnosMat;
    private List<NotaDTO> notas;

    public AsignaturaDTO(Asignatura a) {
        this.id = a.getAsignaturaId();
        this.asignaturaName = a.getAsignaturaName();
        this.alumnosMat = toAlumnoDTO(a.getAlumnosMatriculados());
        this.notas = a.getNotas() != null ? a.getNotas().stream()
        .filter(nota -> nota.getAsignaturaNota().getAsignaturaId().equals(this.id))
        .map(NotaDTO::new)
        .collect(Collectors.toList()) : null;
    }

    private List<AlumnoDTO> toAlumnoDTO(List<Alumno> alumnos) {
        List<AlumnoDTO> alumnosDTO = new ArrayList<>();
        for (Alumno a : alumnos) {
            alumnosDTO.add(new AlumnoDTO(a));
        }
        return alumnosDTO;
    }
}
