import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {

    protected int counter = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        try{
            if(request.getParameter("reset").equals("1")) {
                counter = 0;
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        counter = counter + 1;
        out.println("The count is " + counter + "." );
    }

}

