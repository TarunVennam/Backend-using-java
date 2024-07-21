

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/*")
public class libraryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/registration":
                request.getRequestDispatcher("WEB-INF/views/registration.jsp").forward(request, response);
                break;
            case "/searchBook":
                request.getRequestDispatcher("WEB-INF/views/searchBook.jsp").forward(request, response);
                break;
            case "/borrowedBook":
                request.getRequestDispatcher("WEB-INF/views/borrowedBook.jsp").forward(request, response);
                break;
            case "/returnBook":
                request.getRequestDispatcher("WEB-INF/views/returnBook.jsp").forward(request, response);
                break;
            case "/fine":
                request.getRequestDispatcher("WEB-INF/views/fine.jsp").forward(request, response);
                break;
            case "/logout":
                request.getRequestDispatcher("WEB-INF/views/logout.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("WEB-INF/views/home.jsp").forward(request, response);
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/register":
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                // Registration logic here (e.g., save to database)
                request.setAttribute("message", "Registration successful!");
                request.getRequestDispatcher("WEB-INF/views/registration.jsp").forward(request, response);
                break;
            case "/searchBook":
                String bookTitle = request.getParameter("bookTitle");
                // Search logic here
                request.setAttribute("message", "Search not implemented yet.");
                request.getRequestDispatcher("WEB-INF/views/searchBook.jsp").forward(request, response);
                break;
            case "/borrowedBook":
                String bookId = request.getParameter("bookId");
                String userId = request.getParameter("userId");
                // Borrowed book logic here
                request.setAttribute("message", "Borrowed book not implemented yet.");
                request.getRequestDispatcher("WEB-INF/views/borrowedBook.jsp").forward(request, response);
                break;
            case "/returnBook":
                bookId = request.getParameter("bookId");
                userId = request.getParameter("userId");
                // Return book logic here
                request.setAttribute("message", "Return book not implemented yet.");
                request.getRequestDispatcher("WEB-INF/views/returnBook.jsp").forward(request, response);
                break;
            case "/fine":
                userId = request.getParameter("userId");
                String amount = request.getParameter("amount");
                // Fine logic here
                request.setAttribute("message", "Fine payment not implemented yet.");
                request.getRequestDispatcher("WEB-INF/views/fine.jsp").forward(request, response);
                break;
            default:
                doGet(request, response);
                break;
        }
    }
}
