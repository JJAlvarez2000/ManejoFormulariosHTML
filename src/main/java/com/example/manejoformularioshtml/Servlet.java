package com.example.manejoformularioshtml;
import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Servlet", value = "/servlet")
public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("contrasena");

            out.print("Welcome " + usuario);



        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void destroy() {
    }
}