package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.Choferesbr;
import be.Choferesbe;
import be.ContenidoTransportebe;
import br.TransporteMaquinariaPreciobr;
import be.RegistrarSolicitudTransporteMaquinaria;
import br.AlquilerMaquinariaPreciobr;
import be.RegistrarAlquiler;
import java.util.List;
import br.RegistrarServiciobr;
import be.ContenidoAlquilerbe;

public final class SolicitudesTransporteMaquinaria_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"img/LogoIlche.jpeg\">\n");
      out.write("        <script src=\"jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap-4.5.0-dist/css/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"container-fluid \">\n");
      out.write("            <div class=\"card bg-dark\">\n");
      out.write("                <div class=\"card-title\" style=\"text-align: center;color: white\">\n");
      out.write("                    <b><i><h1>SOLICITUDES</h1></i></b>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("            ");

            List<RegistrarSolicitudTransporteMaquinaria> lista;
            TransporteMaquinariaPreciobr regla = new TransporteMaquinariaPreciobr();
            lista = regla.listarSolicitudTransporteMaquinaroa();
            for (RegistrarSolicitudTransporteMaquinaria entidad:lista){ 
            
      out.write("\n");
      out.write("           \n");
      out.write("            <div class=\"card\" style=\"width: 100%; background: #ffcc20\">\n");
      out.write("                <div class=\"card-title\" style=\"text-align: left\">\n");
      out.write("                    \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                       <div class=\"col-11\">\n");
      out.write("                        <b><h3>SOLICITUD N° ");
      out.print( entidad.getCodigo() );
      out.write("</h3></b>\n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"col-1\">\n");
      out.write("                            <button class=\"btn btn-outline-danger\" style=\" float: right\"\n");
      out.write("                                    onclick='eliminarAlquiler(\n");
      out.write("                                                \"");
      out.print( entidad.getCodigo() );
      out.write("\",\"");
      out.print( entidad.getDni());
      out.write("\" )'\n");
      out.write("                                    ><i class=\"fas fa-times\"></i></button>\n");
      out.write("                        </div> \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                 \n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-body\" style=\"background: black; color: white\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-1\">\n");
      out.write("                            <b>Cliente:</b>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-4\">\n");
      out.write("                            <input class=\"form-control bg-light\"  name=\"txtcodigocli\" type=\"text\" id=\"txtdni\" readonly=\"\"\n");
      out.write("                                   value=\" ");
      out.print(entidad.getApellido());
      out.write("\">\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-3\">\n");
      out.write("                            <b>Fecha de transporte</b>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-4\" >\n");
      out.write("                            <input class=\"form-control bg-light\"  name=\"txtcodigocli\" type=\"date\" id=\"txtdni\" readonly=\"\"\n");
      out.write("                                   value=\"");
      out.print(entidad.getFecha());
      out.write("\">\n");
      out.write("                           \n");
      out.write("                        </div>           \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                     <br>   \n");
      out.write("                        <div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                  <!-- tabla de contenido -->\n");
      out.write("                               <div class=\"table\" style=\"color: white\">\n");
      out.write("                                                <table class=\"table table-light\" border=\"2\" style=\"color: black;border-radius: 10px\">\n");
      out.write("                                                    <thead class=\"table-warning\" style=\"text-align: center\">\n");
      out.write("                                                    <th>\n");
      out.write("                                                        <div class=\"row\">\n");
      out.write("                                                            <div class=\"col-2\">CANT.</div>\n");
      out.write("                                                            <div class=\"col-6\">DESCRIPCION</div>\n");
      out.write("                                                            <div class=\"col-2\">P.UNITARIO</div>\n");
      out.write("                                                            <div class=\"col-2\">IMPORTE</div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </th>\n");
      out.write("                                                    </thead>\n");
      out.write("                                                    <tbody>\n");
      out.write("                                                         ");
 
                                                        String codigo = entidad.getCodcont();
                                                        List<ContenidoTransportebe> Cont;
                                                        TransporteMaquinariaPreciobr rc = new TransporteMaquinariaPreciobr();
                                                        Cont = rc.listarContenidoTransporteMaquinaria(codigo);
                                                        for (ContenidoTransportebe entida:Cont){ 


                                                        
      out.write("    \n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>\n");
      out.write("                                                             <div class=\"row\">\n");
      out.write("                                                            <div class=\"col-2\"> ");
      out.print( entida.getCantidad() );
      out.write("</div>\n");
      out.write("                                                            <div class=\"col-6\">");
      out.print( entida.getMaquina());
      out.write(" Transportado: ");
      out.print( entida.getVehiculo());
      out.write(" - ");
      out.print( entida.getDepa());
      out.write("</div>\n");
      out.write("                                                            <div class=\"col-2\">");
      out.print( entida.getPrecio());
      out.write("</div>\n");
      out.write("                                                            <div class=\"col-2\">");
      out.print( entida.getSubtotal());
      out.write("</div>\n");
      out.write("                                                            </div>   \n");
      out.write("                                                            </td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        ");
 
                                                        }
                                                        
      out.write(" \n");
      out.write("                                                        <tr>\n");
      out.write("                                                            <td>\n");
      out.write("                                                                <div class=\"row\">\n");
      out.write("                                                                    <div class=\"col-10\" style=\"text-align: right\">\n");
      out.write("                                                                        total S/.\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                    <div class=\"col-2\">\n");
      out.write("                                                                        <input class=\"form-control bg-light\"  name=\"txtcodigocli\" type=\"text\" id=\"txtnombre\" readonly=\"\"\n");
      out.write("                                                                               value='");
      out.print( entidad.getPrecio() );
      out.write("' >            \n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </div>\n");
      out.write("                                                            </td>\n");
      out.write("                                                        </tr>\n");
      out.write("                                                        \n");
      out.write("                                                    </tbody>\n");
      out.write("                                                </table>\n");
      out.write("                                               \n");
      out.write("                                            </div> \n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                        </div> \n");
      out.write("                        <div class=\"row\" >\n");
      out.write("                            ");
 
                            String codigoChofer = entidad.getChofer();
                            List<Choferesbe> Chofer;
                            Choferesbr chof = new Choferesbr();
                            Chofer = chof.BuscarChofer(codigoChofer);
                            for (Choferesbe entida:Chofer){ 
                            
                                
      out.write("\n");
      out.write("                        <div class=\"col-3\">\n");
      out.write("                            <b>CHOFER DE TRANSPORTE</b>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-4\">\n");
      out.write("                            \n");
      out.write("                                ");
      out.print( entida.getNombre() );
      out.write(' ');
      out.print( entida.getApellido());
      out.write("\n");
      out.write("                          </div>       \n");
      out.write("                        <div class=\"col-2\">\n");
      out.write("                            <b>DNI</b>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-3\">\n");
      out.write("                            \n");
      out.write("                               ");
      out.print( entida.getDni());
      out.write("\n");
      out.write("                          </div>         \n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                                ");

                            }
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                       \n");
      out.write("                    </div> \n");
      out.write("                </div>\n");
      out.write("                        <div class=\"card-footer\" style=\"background: #ffcc20\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-12\" style=\"text-align: center\">\n");
      out.write("                                    <button class=\"btn btn-primary\" onclick='AgregarPedido(\n");
      out.write("                                                \"");
      out.print( entidad.getDni());
      out.write("\",\"");
      out.print( entidad.getCodcont());
      out.write("\",\"");
      out.print( entidad.getApellido());
      out.write("\",\n");
      out.write("                                                \"");
      out.print( entidad.getPrecio());
      out.write("\",\n");
      out.write("                                                \"");
      out.print( entidad.getFecha());
      out.write("\",\"");
      out.print( entidad.getChofer());
      out.write("\")'>GENERAR PEDIDO</button>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("            </div>\n");
      out.write("               \n");
      out.write("                                <br>\n");
      out.write("            ");

            }

            
      out.write(" \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/jquery-3.5.1.slim.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/popper.min.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"bootstrap-4.5.0-dist/js/bootstrap.min.js\" crossorigin=\"anonymous\"></script>\n");
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
