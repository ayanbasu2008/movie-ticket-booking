package ticket.booking.exception;

public class AuditoriumNotFoundException extends RuntimeException {
    public AuditoriumNotFoundException(Long auditorium_id) {
    }
}
