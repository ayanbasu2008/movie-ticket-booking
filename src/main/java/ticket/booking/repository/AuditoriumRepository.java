package ticket.booking.repository;

import ticket.booking.model.Auditorium;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AuditoriumRepository extends JpaRepository<Auditorium, Long> {
    List<Auditorium> findByTheatreId(String theatreId);
}
