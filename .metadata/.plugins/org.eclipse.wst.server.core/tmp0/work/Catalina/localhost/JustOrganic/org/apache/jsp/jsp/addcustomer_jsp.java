/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.73
 * Generated at: 2023-04-15 11:01:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addcustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("<style>\r\n");
      out.write(".gradient-custom-3 {\r\n");
      out.write("/* fallback for old browsers */\r\n");
      out.write("background: #84fab0;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Chrome 10-25, Safari 5.1-6 */\r\n");
      out.write("background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));\r\n");
      out.write("\r\n");
      out.write("/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\r\n");
      out.write("background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))\r\n");
      out.write("}\r\n");
      out.write(".gradient-custom-4 {\r\n");
      out.write("/* fallback for old browsers */\r\n");
      out.write("background: #84fab0;\r\n");
      out.write("\r\n");
      out.write("/* Chrome 10-25, Safari 5.1-6 */\r\n");
      out.write("background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));\r\n");
      out.write("\r\n");
      out.write("/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\r\n");
      out.write("background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");

String msg=(String) request.getAttribute("msg");
if(msg!=null){

      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("alert(\"");
      out.print(msg);
      out.write("\")</script>\r\n");
} 
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("<section class=\"vh-100 bg-image w-100\"\r\n");
      out.write("  style=\"background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');  \">\r\n");
      out.write("  <div class=\"mask d-flex align-items-center h-50 \">\r\n");
      out.write("    <div class=\"container h-75\">\r\n");
      out.write("      <div class=\"row d-flex justify-content-center align-items-center h-50\">\r\n");
      out.write("        <div class=\"col-10 col-md-9 col-lg-7 col-xl-6\">\r\n");
      out.write("          <div class=\"card\" style=\"border-radius: 15px;\">\r\n");
      out.write("            <div class=\"card-body p-5\">\r\n");
      out.write("              <h2 class=\"text-uppercase text-center mb-5\">Register here</h2>\r\n");
      out.write("\r\n");
      out.write("              <form action=\"/JustOrganic/cc\"  method=\"post\">\r\n");
      out.write("              <input type=\"hidden\" name=\"action\" value=\"addcustomer\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-outline mb-3\">\r\n");
      out.write("                <label class=\"form-label\" for=\"form3Example1cg\">Enter your Name</label>\r\n");
      out.write("                  <input type=\"text\" id=\"form3Example1cg\" name=\"customername\" class=\"form-control form-control-lg\" />\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-outline mb-3\">\r\n");
      out.write("                <label class=\"form-label\" for=\"form3Example1cg\">Enter Address</label>\r\n");
      out.write("                  <input type=\"text\" id=\"form3Example1cg\" name=\"customeradd\"  class=\"form-control form-control-lg\" />\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-outline mb-3\">\r\n");
      out.write("                <label class=\"form-label\" for=\"form3Example1cg\">Enter Contact</label>\r\n");
      out.write("                  <input type=\"text\" id=\"form3Example1cg\" name=\"customercontact\"  class=\"form-control form-control-lg\" />\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-outline mb-3\">\r\n");
      out.write("                <label class=\"form-label\" for=\"form3Example3cg\">Your Email</label>\r\n");
      out.write("                  <input type=\"email\" id=\"form3Example3cg\" name=\"customeremail\"  class=\"form-control form-control-lg\" />\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"form-outline mb-3\">\r\n");
      out.write("                <label class=\"form-label\" for=\"form3Example4cg\">Password</label>\r\n");
      out.write("                 <input type=\"password\" id=\"form3Example4cg\" name=\"customerpass\"  class=\"form-control form-control-lg\" />\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                  <button type=\"submit\"\r\n");
      out.write("                    class=\"btn btn-success btn-block btn-lg gradient-custom-4 text-body\">Register</button>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("   \r\n");
      out.write("\r\n");
      out.write("              </form>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
