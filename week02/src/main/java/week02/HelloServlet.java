package week02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
        super();
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get 방식으로 요청한 경우 실행되는 메소드
		//웹페이지에 출력할 내용을 HTML 코드를 포함하여 기술하는 부분
		//응답할떄 한글타입 설정
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Hello Servlet(get 방식 요청에 대한 결과 페이지)</h1>");
		out.println("</html></body>");
		out.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post 방식으로 요청한 경우 실행되는 메소드
		//웹페이지에 출력할 내용을 HTML 코드를 포함하여 기술하는 부분
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Hello Servlet(post method)</h1>");
		out.println("</html></body>");
		out.close();
	}

}
