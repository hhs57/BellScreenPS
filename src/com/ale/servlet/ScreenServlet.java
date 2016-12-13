package com.ale.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import java.util.UUID;  
import javax.servlet.http.HttpSession;

import com.ale.entity.DataEntity;
import com.ale.util.ConvertJSON;

  
@WebServlet("/ScreenServlet")
public class ScreenServlet extends HttpServlet {  

	private static final long serialVersionUID = 8028533151743905040L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
    	  response.setContentType("text/xml; charset=UTF-8");
    	  //��������Ϊȡ���ڱ��صĻ���
    	  response.setHeader("Cache-Control", "no-cache");
    	  response.setHeader("Pragma", "no-cache");
    	  System.out.println("����ScreenServlet����");
    	  PrintWriter out = response.getWriter();
    	  int x = (int)(1+Math.random()*(10-1+1));
    	        out.write(String.valueOf(x));//ע��������jsp�����������script�еĽػ񷽷�
    	        out.close();

    	    }
  

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
    	response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();

		int x = (int)(1+Math.random()*(1000-1+1));
		int y = (int)(1+Math.random()*(2000-1+1));
		int z = (int)(1+Math.random()*(200-1+1));
		int a = (int)(1+Math.random()*(100-1+1));
		int b = (int)(1+Math.random()*(1050-1+1));
		int c = (int)(1+Math.random()*(100-1+1));
		DataEntity dataEntity =  new DataEntity();
		dataEntity.setZhrl(x);
		dataEntity.setJtl(y);
		dataEntity.setZhful(z);
		dataEntity.setZhl(a);
		dataEntity.setLshbsl(b);
		dataEntity.setLshbbgtzl(c);

		ConvertJSON cj = new ConvertJSON();
		String s = cj.getJSON(dataEntity);
//		System.out.println(s);

		out.print(s);
		out.flush();
		out.close();
    }
 
}  