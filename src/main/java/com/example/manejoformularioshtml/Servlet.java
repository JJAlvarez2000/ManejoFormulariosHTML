package com.example.manejoformularioshtml;
import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Servlet", value = "/servlet")
public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

            // recuperamos los elementos del form pero del lado del servidor
            // y podemos guardarlos en una base de datos o enviarlos a cualquier
            // parte del servidor (en este caso glassfish)
            String usuario = request.getParameter("usuario");
            String password = request.getParameter("contrasena");
            String tecnologias[] = request.getParameterValues("tecnologia");
            String genero = request.getParameter("genero");
            String ocupacion = request.getParameter("ocupacion");
            String musica[] = request.getParameterValues("musica");
            String comentario = request.getParameter("comentarios");

            // respondemos hacia el cliente utilizando HTML dentro de Java
            out.print("<html>");
            out.print("<head>");
            out.print("<title>Resultado Servlet</title>");
            out.print("</head>");
            out.print("<body>");
            out.print("<h1>Parametros procesados por el Servlet</h1>");
            out.print("<table border='1'>");
            out.print("<tr>");
            out.print("<td>Usuario</td>");
            out.print("<td>" + usuario + "</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Password</td>");
            out.print("<td>" + password + "</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Tecnologias</td>");
            out.print("<td>");
            for (String tecnologia : tecnologias) {
                out.print(tecnologia + " ");
            }
            out.print("</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Genero</td>");
            out.print("<td>" + genero + "</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Ocupacion</td>");
            out.print("<td>" + ocupacion + "</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Musica</td>");
            out.print("<td>");
            if (musica != null ) {
                    for (String musica1 : musica) {
                            out.print(musica1 + " ");
                    }
            }
            out.print("</td>");
            out.print("</tr>");
            out.print("<tr>");
            out.print("<td>Comentarios</td>");
            if (comentario != null) {
                    out.print("<td>" + comentario + "</td>");
            } else {
                    out.print("<td>No hay comentarios</td>");
            }
            out.print("</tr>");
            out.print("</table>");
            out.print("</body>");
            out.print("</html>");
            out.close();

    }

    public void destroy() {
    }
}