package ticket.booking.service;

import ticket.booking.model.Auditorium;

import java.util.List;

public interface AuditoriumService {
   List<Auditorium> getAllAuditoriums();

    Auditorium getAuditoriumById(Long auditorium_id);

    Auditorium pushAuditorium(Auditorium newAuditorium);

    Auditorium updateAuditorium(Auditorium updatedAuditorium, Long auditorium_id);

    void deleteAuditoriumById(Long auditorium_id);

    List<Auditorium> getAuditoriumsForTheatre(String theatreId);


}
