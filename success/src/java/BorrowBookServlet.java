import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/borrowBook")
public class BorrowBookServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        
        switch (action) {
            case "create":
                createBorrowedBook(request, response);
                break;
            case "read":
                readBorrowedBooks(request, response);
                break;
            case "update":
                updateBorrowedBook(request, response);
                break;
            case "delete":
                deleteBorrowedBook(request, response);
                break;
            default:
                break;
        }
    }

    private void createBorrowedBook(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String bookId = request.getParameter("bookId");
        String studentId = request.getParameter("studentId");
        String dateBorrowed = request.getParameter("dateBorrowed");
        String returnDate = request.getParameter("returnDate");
        
        String message;
        
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO borrowbook (book_id, student_id, date_borrowed, return_date) VALUES (?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, bookId);
                pstmt.setString(2, studentId);
                pstmt.setString(3, dateBorrowed);
                pstmt.setString(4, returnDate);
                
                int rowsAffected = pstmt.executeUpdate();
                message = (rowsAffected > 0) ? "Book borrowed successfully!" : "Error borrowing book.";
            }
        } catch (SQLException e) {
            message = "Database error: " + e.getMessage();
        }

        request.setAttribute("message", message);
        request.getRequestDispatcher("borrowedBook.jsp").forward(request,response);
    }

    private void readBorrowedBooks(HttpServletRequest request, HttpServletResponse response) {
        // Implementation for reading borrowed books
    }

    private void updateBorrowedBook(HttpServletRequest request, HttpServletResponse response) {
        // Implementation for updating borrowed book
    }

    private void deleteBorrowedBook(HttpServletRequest request, HttpServletResponse response) {
        // Implementation for deleting borrowed book
    }
}
