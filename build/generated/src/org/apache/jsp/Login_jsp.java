package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login Ilche</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/LogoIlche.jpeg\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap-4.5.0-dist/css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("        \n");
      out.write("        function validacion()\n");
      out.write("        {\n");
      out.write("                var cod= document.getElementById(\"textusuario\").value;\n");
      out.write("                var nom = document.getElementById(\"texpassword\").value;\n");
      out.write("               \n");
      out.write("                if (cod.length === 0)\n");
      out.write("                {\n");
      out.write("                    alert(\"Usuario vacío\");\n");
      out.write("                } \n");
      out.write("                else if( nom.length === 0 ) \n");
      out.write("                {\n");
      out.write("                    alert(\"Contraseña vacía\");\n");
      out.write("                }\n");
      out.write("                  \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    <body style=\" background: url(img/Login1Izquierda.jpg) ; background-repeat: no-repeat;\n");
      out.write("          width: 100%; min-height: 100vh; background-position: center;background-size: cover;\n");
      out.write("          background-attachment: fixed;\">  \n");
      out.write("        <div class=\"float-right \" style=\"background: white;height:100vh; width: 28%; float: right\" >\n");
      out.write("            <div style=\"height:97vh;\">\n");
      out.write("            <img src=\"img/LoginFor2.png\" alt=\"\" style=\"height:30%; width: 100% \">\n");
      out.write("            <form action=\"Login_V.jsp\" method=\"post\">\n");
      out.write("                <div class=\"container\" style=\"width: 80%;\">\n");
      out.write("                    <div class=\"row\" >\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            Usuario:\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"textusuario\" id=\"textusuario\"\n");
      out.write("                                           placeholder=\"alguien@ilche.com\" required=\"\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            Contraseña:\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                             <input class=\"form-control\" type=\"password\" name=\"texpassword\" id=\"texpassword\"\n");
      out.write("                                           placeholder=\"Contraseña\"\n");
      out.write("                                           required =\"\" >\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <a href=\"#\" style=\"font-size: 13px;text-decoration: none\">olvidé mi contraseña</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                             <input class=\"btn btn-outline-primary btn btn-block\" type=\"submit\" onclick=\"validacion()\"\n");
      out.write("                                   value=\"Log in\" id=\"new\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            </div> \n");
      out.write("            <div style=\"height: 2vh \">\n");
      out.write("                <p style=\"margin-left:  50px\"> © Ilche</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/popper.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
