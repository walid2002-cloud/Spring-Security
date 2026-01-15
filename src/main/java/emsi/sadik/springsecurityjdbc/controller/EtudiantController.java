package emsi.sadik.springsecurityjdbc.controller;

import emsi.sadik.springsecurityjdbc.model.Etudiant;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EtudiantController {

    @GetMapping("/liste")
    public List<Etudiant> getEtudiants() {
        return List.of(
                new Etudiant(1, "Lamrani", "Yousra"),
                new Etudiant(2, "Kessou", "Abdo"),
                new Etudiant(3, "Chadli", "Adam"));
    }

    @GetMapping("/msg")
    public String getMessage() {
        return "Utilisateurs";
    }
}
