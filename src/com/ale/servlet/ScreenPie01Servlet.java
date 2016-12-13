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
import com.ale.entity.Pie01Entity;
import com.ale.util.ConvertJSON;

  
@WebServlet("/ScreenPie01Servlet")
public class ScreenPie01Servlet extends HttpServlet {  

	private static final long serialVersionUID = 8028533151743905040L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
    	  response.setContentType("text/xml; charset=UTF-8");
    	  //以下两句为取消在本地的缓存
    	  response.setHeader("Cache-Control", "no-cache");
    	  response.setHeader("Pragma", "no-cache");
    	  System.out.println("调用ScreenPie01Servlet方法");
    	  PrintWriter out = response.getWriter();
    	  int x = (int)(1+Math.random()*(10-1+1));
    	        out.write(String.valueOf(x));//注意这里向jsp输出的流，在script中的截获方法
    	        out.close();

    	    }
  

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
    	response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		PrintWriter out = response.getWriter();

		int x = (int)(1+Math.random()*(30-1+1));
		int y = (int)(1+Math.random()*(30-1+1));
		int z = (int)(1+Math.random()*(30-1+1));
		int a = 100-x-y-z;
		//转接率
		int b = (int)(1+Math.random()*(50-1+1));
		int c = 100-b;
		//利用率
		int d = (int)(1+Math.random()*(60-1+1));
		int e = 100-d;
		//不满意率
		int f = (int)(1+Math.random()*(10-1+1));
		int g = 100-f;
		Pie01Entity pie01Entity =  new Pie01Entity();
		pie01Entity.setJx(x);
		pie01Entity.setLx(y);
		pie01Entity.setHz(z);
		pie01Entity.setHh(a);
		pie01Entity.setZj(b);
		pie01Entity.setWzj(e);
		pie01Entity.setLy(d);
		pie01Entity.setWly(e);
		pie01Entity.setMy(f);
		pie01Entity.setBmy(g);
		
		
		
		ConvertJSON cj = new ConvertJSON();
		String s = cj.getJSONPie01(pie01Entity);
		System.out.println(s);

		out.print(s);
		out.flush();
		out.close();
    }
 
}  