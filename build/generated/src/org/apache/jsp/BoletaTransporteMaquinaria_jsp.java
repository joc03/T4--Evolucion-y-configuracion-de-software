package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.Boletabr;

public final class BoletaTransporteMaquinaria_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap-4.5.0-dist/css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"modal\"  id=\"hide\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog modal-xl \" role=\"document\">\n");
      out.write("              <div class=\"modal-content\" style=\"\">\n");
      out.write("              <div class=\"modal-header\" style=\"background:  #ffcc20\">\n");
      out.write("                  <h5 class=\"modal-title\" id=\"exampleModalLongTitle\" style=\"background:  #ffcc20\">\n");
      out.write("                      <i class=\"fas fa-table\"></i> BOLETA</h5>\n");
      out.write("                      <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\" onclick=\"closemodal()\">\n");
      out.write("                      <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                      </button>\n");
      out.write("              </div>\n");
      out.write("                  <form action=\"home.jsp\">\n");
      out.write("                    <div class=\"modal-body\" style=\"background:  black\">\n");
      out.write("                        <div class=\"\" style=\"color: white; padding: 5px\">\n");
      out.write("                            <div class=\"container-fluid\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-2\">\n");
      out.write("                                        <div><img src=\"img/LogoIlche.jpeg\" alt=\"\" style=\"width: 100%\"></div>\n");
      out.write("                                        <div style=\"text-align: center\"><b><h3>Ilche S.R.L</h3></b></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-6\" style=\"text-align: center\">\n");
      out.write("                                        <br> <br>\n");
      out.write("                                        <div><b>N° RUC: 20409637150</b></div>\n");
      out.write("                                        <div><b>Direccion:Los Libertadores Wari - Km. 15.5, Independencia 11640 (Pisco)</b></div>\n");
      out.write("                                        <div><b> Telefono:956 070 634 </b></div>\n");
      out.write("                                        <div><b> Correo:pjh-419@hotmail.com </b></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-4\" style=\"padding: 20px; color: black;font-size: 30px\" >\n");
      out.write("                                        <div class=\"rounded\"\n");
      out.write("                                            style=\"display: inline-block;width: 100%; height: 100% ;background: \">\n");
      out.write("                                            <div class=\"row\"\n");
      out.write("                                                  style=\"display: inline-block;width: 100%; height: 33%;background: #fdfdfe; \"\n");
      out.write("                                                 >\n");
      out.write("                                                R.U.C.\n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                            <div class=\"row\"\n");
      out.write("                                                 style=\"display: inline-block;width: 100%; height: 33%;background: #ffcc20; text-align: center \"\n");
      out.write("                                                 >\n");
      out.write("                                                BOLETA DE VENTA\n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                            <div class=\"row\" id=\"textcodigoo\"\n");
      out.write("                                                 style=\"display: inline-block;width: 100%; height: 33%;background: #fdfdfe; \">\n");
      out.write("                                                ");

                                                br.Boletabr lo = new Boletabr();
                                        int resultado= lo.Filas();
                                        String codigo = "N000" + resultado;    
                                                
      out.write("\n");
      out.write("                                               ");
      out.print(codigo );
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                            <div  style=\"color: white\">   \n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-2\">\n");
      out.write("                                            Señor(a)\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-6\">\n");
      out.write("                                            <input class=\"form-control bg-light\"  name=\"txtNombreGB\" type=\"text\" id=\"txtNombreGB\" readonly=\"\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-2\">\n");
      out.write("                                            DNI\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-2\">\n");
      out.write("                                            <input class=\"form-control bg-light\" readonly=\"\"  name=\"txtNombreGB\" type=\"text\" id=\"txtcodigoGB\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                <br>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-2\">\n");
      out.write("                                            Fecha de inicio\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-4\">\n");
      out.write("                                            <input class=\"form-control bg-light\" readonly=\"\"  name=\"txtfechIGB\" type=\"date\" id=\"txtfechIGB\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-3\">\n");
      out.write("                                            Fecha Fin\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-3\">\n");
      out.write("                                           <input class=\"form-control bg-light\" readonly=\"\" name=\"txtfechFGB\" type=\"date\" id=\"txtfechFGB\">                                            \n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                <br>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    <div class=\"col-2\">\n");
      out.write("                                           Tipo de servicio : \n");
      out.write("                                        </div>\n");
      out.write("                                    <div class=\"col-4\" id=\"\" type=\"text\">\n");
      out.write("                                        <input class=\"form-control bg-light\" readonly=\"\"  name=\"txttipoGB\" type=\"text\" id=\"txttipoGB\">\n");
      out.write("                                        <input type=\"hidden\" name=\"codigoGB\" id=\"txtCodContGB\"  value=\"\">\n");
      out.write("                                            \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-2\">\n");
      out.write("                                            Precio Total\n");
      out.write("                                        </div>\n");
      out.write("                                    <div class=\"col-2\" >\n");
      out.write("                                        \n");
      out.write("                                        <input class=\"form-control bg-light\" readonly=\"\" name=\"txtcodigocli\" type=\"text\" id=\"txtPrecioGB\" style=\"text-align: right\">\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div class=\"row\" id=\"Contenido\">\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                <div class=\"modal-footer \" style=\"background:  #ffcc20\">\n");
      out.write("                  <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\" onclick=\"closemodal()\">Close</button>\n");
      out.write("                  <button type=\"submit\" class=\"btn btn-primary\" onclick=\"GuardarBoleta()\">GENERAR BOLETA</button>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/popper.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>                                        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
