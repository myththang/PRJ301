package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>EOS Login Form</title>\n");
      out.write("    </head>\n");
      out.write("    <body > \n");
      out.write("        <div style=\" box-sizing: border-box;\n");
      out.write("             border: 1px solid black;\n");
      out.write("             width: 440px;\n");
      out.write("             height: 320px; background-color: rgb(240, 240, 240);margin: auto\">\n");
      out.write("            <div style=\"text-align: center\">\n");
      out.write("                <h2 style=\"color: red;font-size: medium\">You cannot take the exam if EOS runs under a virtual machine</h2>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <form action=\"login\" method=\"post\">\n");
      out.write("                <div style=\"text-align: right; margin: 0 50px 20px 50px\">\n");
      out.write("                    Exam Code:<input style=\"width: 220px;margin: 0 5px\" type=\"text\" id=\"examcode\" name=\"examcode\" required><br><br>\n");
      out.write("                    Username:<input style=\"width: 220px;margin: 0 5px\" type=\"text\" id=\"username\" name=\"username\" required><br><br>\n");
      out.write("                    Password:<input style=\"width: 220px;margin: 0 5px\" type=\"password\" id=\"password\" name=\"password\" required><br><br>\n");
      out.write("                    Domain:<input style=\"width: 220px;margin: 0 5px\" type=\"text\" disabled=\"\" value=\"FU.EDU.VN\" >\n");
      out.write("                </div>\n");
      out.write("                <div style=\"text-align: center;margin-left: 60px\">\n");
      out.write("                    <input style=\"padding: 0px 20px;margin-right: 40px;border: 2px solid blue;\" type=\"submit\" value=\"Login\">\n");
      out.write("                    <button style=\"padding: 0px 20px\" type=\"button\" onclick=\"exit()\">Exit</button>\n");
      out.write("                    <br><a href=\"sound.jsp\" target=\"_blank\">Check sound(7s)</a>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            <div style=\"text-align: center\">\n");
      out.write("                <h3 style=\"color: blue;font-size: medium;text-align: center\">Register the exam may take time, please wait</h3>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            function exit() {\n");
      out.write("                window.close();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty error}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("            <p style=\"color: red;\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</p>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
