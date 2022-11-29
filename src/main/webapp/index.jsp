<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="resources/estilos.css">
        <title>Ejercicio Formulario</title>
        <meta charset="UTF-8">
        <script type="text/javascript" src="resources/funciones.js"></script>
    </head>
    <body>
        <form name="form1" action="/ManejoFormulariosHTML-1.0-SNAPSHOT/servlet" method="post"
        onSubmit="return validarForma(this)">
        <input type="hidden" name="oculto" value="valorOculto" />
        <table width="200" id="enfasis-columna">
            <caption>Formulario de Registro</caption>
            <tr>
                <td class="columna">
                    Usuario: (*)
                </td>
                <td>
                    <input class="default" type="text" name="usuario"
                    value="Escribir usuario" onfocus="this.select()"/>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Contraseña: (*)
                </td>
                <td>
                    <input class="default" type="password" name="contrasena"
                    onfocus="this.select()"/>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Tecnologias de Internet: (*)
                </td>
                <td>
                    <input type="checkbox" name="tecnologia" value="HTML" />HTML
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="CSS" />CSS
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="JavaScript" />JavaScript
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="PHP" />PHP
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="Java" />Java
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="C#" />C#
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="C++" />C++
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="Ruby" />Ruby
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="Python" />Python
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="tecnologia" value="Perl" />Perl
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Genero: (*)
                </td>
                <td>
                    <input type="radio" name="genero" value="Masculino" />Masculino
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="genero" value="Femenino" />Femenino
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Ocupacion: (*)
                </td>
                <td>
                    <select name="ocupacion" class="default">
                        <option value="">Seleccionar</option>
                        <option value="1">Profesor</option>
                        <option value="2">Desempleado</option>
                        <option value="3">Otro</option>
                        <option value="4">Estudiante</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Musica Favorita:
                </td>
                <td>
                    <select name="musica" multiple class="default">
                        <option value="rock">Rock</option>
                        <option value="pop">Pop</option>
                        <option value="salsa">Salsa</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="columna">
                    Comentarios:
                </td>
                <td>
                    <textarea name="comentarios" rows="2" cols="30" class="default"
                    onfocus="this.select()">
                        Escribir un texto
                    </textarea>
                </td>
            </tr>
            <tr style="text-align: center">
                <td>
                    <input type="reset" value="Limpiar" class="default" />
                </td>
                <td>
                    <input type="submit" value="Enviar" class="default" />
                </td>
            </tr>
        </table>
        </form>
        <a href="servlet">Hello Servlet</a>
    </body>
</html>