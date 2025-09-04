package week02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Address")
public class Address extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Address() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get 방식으로 요청이 들어온 경우 실행되는 메소드
		//input 태그에서 입력되어 넘어오는 데이터(이름,주소)를 받아야 함
		//요청할 때 넘어오는 데이터는 request 객체에 담겨져서 넘어옴
		
		response.setContentType("text/html;charset=utf-8");
		
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h3>"+name+"님은 " + addr + "에 사는군요.</h3>");
		out.println("</html></body>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식으로 요청이 들어온 경우 실행되는 메소드
		doGet(request,response);
	}

}
