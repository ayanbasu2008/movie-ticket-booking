package ticket.booking.service.impl;

import ticket.booking.model.Theatre;
import ticket.booking.repository.TheatreRepository;
import ticket.booking.service.TheatreService;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class TheatreServiceImpl implements TheatreService {
    private TheatreRepository theatreRepository;

    public TheatreServiceImpl(TheatreRepository theatreRepository) {
        this.theatreRepository = theatreRepository;
    }


    @Override
    public List<Theatre> getAllTheatres() {
        return theatreRepository.findAll();
    }

    @Override
    public Theatre getTheatreById(Long theatre_id) {
        return null;
    }

    @Override
    public Theatre pushTheatre(Theatre newTheatre) {
        return null;
    }

    @Override
    public Theatre updateTheatre(Theatre updatedTheatre, Long theatre_id) {
        return null;
    }

    @Override
    public void deleteTheatreById(Long theatre_id) {

    }

    @Override
    public String addTheatre(boolean isTheatrePartner, Theatre theatre) {
        if (isTheatrePartner) {
            theatreRepository.save(theatre);
            return "Theatre added successfully";
        }
        else {
            return "user is not a Theatre Partner. So cannot add theatre";
        }
    }

    @Override
    public List<Theatre> getAllTheatresInCity(String city) {
        return theatreRepository.findByCity(city);
    }
}
