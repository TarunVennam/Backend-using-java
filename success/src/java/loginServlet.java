import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html"); 
 PrintWriter out=response.getWriter();  
String n=request.getParameter("uname"); 
 String p=request.getParameter("pass"); 

 if(p.equals("admin@12")){ 
 out.print("<script>alert('welcome To Library');window.location.href='dashboard.jsp';</script>"); 
 
 HttpSession session=request.getSession(); 

 session.setAttribute("uname",n); 
 out.println("<a href='adminpage'>go</a");  
} 
 else if(p.equals("student@12")){
     out.print("<script>alert('welcome To Library')</script>");    
 request.getRequestDispatcher("students.jsp").include(request, response); 
 HttpSession session=request.getSession(); 

 session.setAttribute("uname",n);  
 }
  else if(p.equals("staff@12")){
     out.print("<script>alert('welcome To Library')</script>"); 
 request.getRequestDispatcher("staffform.jsp").include(request, response); 
 HttpSession session=request.getSession(); 

 session.setAttribute("uname",n);  }


   else if(p.equals("external@12")){
   out.print("<script>alert('welcome To Library')</script>");  
 request.getRequestDispatcher("external.jsp").include(request, response); 
 HttpSession session=request.getSession(); 

 session.setAttribute("uname",n);  }
else{ 
 out.print("Sorry, username or password incorrect!"); 
 request.getRequestDispatcher("loginform.jsp").include(request, response); 
 } 
out.close(); 
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
