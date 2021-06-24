package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lr0.LR0Parser;

import util.Grammar;

/**
 * Servlet implementation class GrammerServlet
 */
@WebServlet("/GrammerServlet")
public class GrammerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

    /**
     * Default constructor. 
     */
    public GrammerServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LR0Parser lr0Parser;
		
		String gm = request.getParameter("tr");
		int len = gm.length();
		System.out.println(gm);
		System.out.println("Length of string - "+len);
		 boolean canBeParse = true;
		Grammar grammar = new Grammar(gm);
		 lr0Parser = new LR0Parser(grammar);
		 canBeParse = lr0Parser.parserLR0();
		
		 
		 if(canBeParse)
		 {
			 request.setAttribute("First",grammar.getFirstSets());
			 request.setAttribute("Follow",grammar.getFallowSets());
			 request.setAttribute("grm", grammar.getRules());
			 request.setAttribute("can",lr0Parser.getCanonicalCollection());
			 request.setAttribute("gotot",lr0Parser.goToTableStr());
			 request.setAttribute("act",lr0Parser.actionTableStr());
			 request.setAttribute("gt",lr0Parser.getgoto());
			 request.getRequestDispatcher("Output.jsp").forward(request, response);
			 
		 }
		 else
		 {
			 response.sendRedirect("Invalid.jsp");
		 }
		 	
	       
       
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
