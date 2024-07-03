

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class team extends HttpServlet {

   

   

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         response.setContentType("text/html");   
     PrintWriter out = response.getWriter();   
           
    String n=request.getParameter("email");   
    String p=request.getParameter("pass");   
    if(p.equals("diane")){       
RequestDispatcher rd=request.getRequestDispatcher("teams");   
rd.forward(request, response);   
    }
    else{   
        
out.print("Incorrect UserName or  Password ");   
          
RequestDispatcher rd=request.getRequestDispatcher("/index.html");   
rd.include(request, response);   
}   
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
