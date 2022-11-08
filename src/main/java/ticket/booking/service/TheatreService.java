package ticket.booking.service;

import ticket.booking.model.Theatre;

import java.util.List;

public interface TheatreService {
    List<Theatre> getAllTheatres();

    Theatre getTheatreById(Long theatre_id);

    Theatre pushTheatre(Theatre newTheatre);

    Theatre updateTheatre(Theatre updatedTheatre, Long theatre_id);

    void deleteTheatreById(Long theatre_id);

    String addTheatre(boolean isTheatrePartner, Theatre theatre);

    List<Theatre> getAllTheatresInCity(String city);
}
