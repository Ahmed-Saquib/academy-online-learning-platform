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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("<link href=\"login.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("<section class=\"login-block\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("\t\t<div class=\"col-md-4 login-sec\">\n");
      out.write("\t\t    <h2 class=\"text-center\">Login Now</h2>\n");
      out.write("\t\t    <form class=\"login-form\" action=\"Login\" method=\"POST\">\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"exampleInputEmail1\" class=\"text-uppercase\">Enter Email :</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" placeholder=\"abc@g.bracu.ac.bd\" name=\"uEmail\" required>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"exampleInputPassword1\" class=\"text-uppercase\">Enter Password :</label>\n");
      out.write("    <input type=\"password\" class=\"form-control\" placeholder=\"********\" name=\"uPass\" required>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("                        \n");
      out.write("    <div class=\"form-check\">\n");
      out.write("        \n");
      out.write("    <button type=\"submit\" class=\"btn btn-login float-right\">Log in</button>\n");
      out.write("    </div>\n");
      out.write("  \n");
      out.write("</form>\n");
      out.write("<div class=\"copy-text\">Made with <i class=\"fa fa-heart\"></i> </div>\n");
      out.write("<button onclick=\"window.location.href='UserRegistrationForm.jsp'\" class=\"btn btn-login float-center\">Sign up</button>\n");
      out.write("<!--<button type=\"submit\" href=\"UserRegistrationForm.jsp\" class=\"btn btn-login float-center\">Sign up</button> -->\n");
      out.write(" \n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("            \n");
      out.write("\t\t<div class=\"col-md-8 banner-sec\">\n");
      out.write("                </div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("</section>");
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
