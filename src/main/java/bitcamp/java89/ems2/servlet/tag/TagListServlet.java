package bitcamp.java89.ems2.servlet.tag;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitcamp.java89.ems2.dao.TagDao;
import bitcamp.java89.ems2.domain.Tag;
import bitcamp.java89.ems2.listener.ContextLoaderListener;

@WebServlet("/tag/list")
public class TagListServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
      response.setContentType("text/html;charset=UTF-8");

      TagDao tagDao = (TagDao)ContextLoaderListener.applicationContext.getBean("tagDao");
      ArrayList<Tag> list = tagDao.getList();

      RequestDispatcher rd = request.getRequestDispatcher("/tag/list.jsp");
      request.setAttribute("tags", list);
      rd.include(request, response);


    } catch (Exception e) {
      request.setAttribute("error", e);
      RequestDispatcher requestDispatcher = request.getRequestDispatcher("/error");
      requestDispatcher.forward(request, response);
      return;
    }
  }
}