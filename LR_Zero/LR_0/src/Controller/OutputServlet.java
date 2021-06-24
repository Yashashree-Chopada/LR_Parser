package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import util.LRParser;

import lr0.LR0Parser;

/**
 * Servlet implementation class OutputServlet
 */
@WebServlet("/OutputServlet")
public class OutputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OutputServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("static-access")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String str = request.getParameter("sr");
		System.out.println("String from servlet - "+str);
        ArrayList<String> words = new ArrayList<String>();
        String[] split = str.trim().split("\\s+");
        for(String s: split)
        {
            words.add(s);
        }

        
		
        System.out.println("Array List - "+words);
        boolean ac = LRParser.accept(words);
        System.out.println("Result - "+ac);
        if(ac)
        {
        	request.setAttribute("acc","Accepted");
        	request.getRequestDispatcher("result.jsp").forward(request, response);
        	
        }
        else
        {
        	request.setAttribute("acc","na");
        	request.getRequestDispatcher("result.jsp").forward(request, response);
        	
        }
        
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
