package emsi.sadik.springsecurityjdbc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Etudiant {
    private int id;
    private String nom;
    private String prenom;
}
