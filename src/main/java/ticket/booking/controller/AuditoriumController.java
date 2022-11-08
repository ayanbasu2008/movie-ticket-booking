package ticket.booking.controller;

import ticket.booking.model.Auditorium;
import ticket.booking.service.AuditoriumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AuditoriumController {
    private AuditoriumService auditoriumService;

    @Autowired
    public AuditoriumController(AuditoriumService auditoriumService) {
        this.auditoriumService = auditoriumService;
    }

    @GetMapping("/auditoriums")
    public List<Auditorium> getAllAuditorium() {
        return auditoriumService.getAllAuditoriums();
    }

    // get all the auditoriums for a particular theatre
    @GetMapping("/auditoriums/theatre/{theatreId}")
    public List<Auditorium> getAuditoriumsForTheatre (@PathVariable String theatreId) {
        return auditoriumService.getAuditoriumsForTheatre(theatreId);
    }




}
