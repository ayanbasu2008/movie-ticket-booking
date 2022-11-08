package ticket.booking.repository;

import ticket.booking.model.Screening;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ScreeningRepository extends JpaRepository<Screening, Long> {
    List<Screening> findByAuditoriumId(String auditoriumId);

    Screening findById(String screeningId);
}
