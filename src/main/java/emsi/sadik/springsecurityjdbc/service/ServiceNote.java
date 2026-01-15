package emsi.sadik.springsecurityjdbc.service;

import emsi.sadik.springsecurityjdbc.entity.Note;
import emsi.sadik.springsecurityjdbc.repository.NoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceNote {

    @Autowired
    NoteRepository noteRepository;

    public List<Note> listeNote() {
        return noteRepository.findAll();
    }

    public List<Note> listeNoteParUser(String username) {
        return noteRepository.getNotesByUsername(username);
    }
}
