package ticket.booking.controller;

import ticket.booking.model.Theatre;
import ticket.booking.service.TheatreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class TheatreController {
    private TheatreService theatreService;

    @Autowired
    public TheatreController(TheatreService theatreService) {
        this.theatreService = theatreService;
    }

    // Theatre partners can add theatres..
    @PostMapping ("/theatrePartner/addTheatre")
    public String addTheatre(@RequestParam boolean isTheatrePartner , @RequestBody Theatre theatre) {
        return theatreService.addTheatre(isTheatrePartner, theatre);
    }

    // get all theatres
    @GetMapping("/theatres")
    public List<Theatre> getAllTheatres() {
        return theatreService.getAllTheatres();
    }

    // get all the theatres in a city
    @GetMapping("/theatres/{city}")
    public List<Theatre> getAllTheatresInCity(@PathVariable String city) {
        return theatreService.getAllTheatresInCity(city);
    }





}
