package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Exam_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Page</title>\n");
      out.write("        <style>\n");
      out.write("            img {\n");
      out.write("                width:100%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #f2f2f2;width: 1920;height: 950\">\n");
      out.write("        <div style=\"display: flex;justify-content: space-evenly\">\n");
      out.write("            <div>\n");
      out.write("                Machine:<span style=\"color: blue;\" >DESKTOP-O52JKRV</span>\n");
      out.write("                <br>Server:<span style=\"color: blue;\" ></span>\n");
      out.write("                <br>Duration:<span style=\"color: blue;\">Eng_EOS_14032</span>\n");
      out.write("                <br>Q mark:<span style=\"color: blue;\"></span>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                Student:<span style=\"color: blue;\"></span>\n");
      out.write("                <br>Examcode:<span style=\"color: blue;\"></span>\n");
      out.write("                <br>Open Code:<input type=\"text\" disabled=\"\"><input type=\"submit\" disabled=\"\">\n");
      out.write("                <br>Total Mark:<span style=\"color: blue;\" >");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <img src=\"image.png\" alt=\"VN\" style=\"width:200px;height:115px\" >\n");
      out.write("                <div id=\"countdown-timer\"style=\"font-size: 32px;color: red;\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"display: flex;justify-content: space-evenly\">\n");
      out.write("            <div>\n");
      out.write("                <input type=\"radio\" name=\"option\" value=\"A\">A\n");
      out.write("                <br><input type=\"radio\" name=\"option\" value=\"B\">B\n");
      out.write("                <br><input type=\"radio\" name=\"option\" value=\"C\">C\n");
      out.write("                <br><input type=\"radio\" name=\"option\" value=\"D\">D\n");
      out.write("            </div>\n");
      out.write("            <div style=\"background-color: white; width: 900px; height: 500px;\">\n");
      out.write("                <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.get(0).getA()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.get(0).getB()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.get(0).getC()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("                <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.get(0).getD()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("            </div>\n");
      out.write("            <div style=\"width: 8px;cursor: col-resize;background-color: red;\" class=\"resizer\"></div>\n");
      out.write("            <div style=\"background-color: white; width: 500px; height: 500px;\">\n");
      out.write("                <span>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quiz.get(0).getQuestion()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"display: flex;\">\n");
      out.write("            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            var timeLeft = 3600; // set the number of seconds for the countdown\n");
      out.write("            var timer = setInterval(function () {\n");
      out.write("                timeLeft--;\n");
      out.write("                var minutes = Math.floor(timeLeft / 60);\n");
      out.write("                var seconds = timeLeft % 60;\n");
      out.write("                document.getElementById(\"countdown-timer\").innerHTML = minutes + \": \" + seconds;\n");
      out.write("                if (timeLeft == 0) {\n");
      out.write("                    clearInterval(timer);\n");
      out.write("                    document.getElementById(\"my-form\").submit(); // submit the form when time is up\n");
      out.write("                }\n");
      out.write("            }, 1000);\n");
      out.write("        </script>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems(new String("quiz"));
    _jspx_th_c_forEach_0.setVar("item");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                <button>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</button>\n");
          out.write("            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
