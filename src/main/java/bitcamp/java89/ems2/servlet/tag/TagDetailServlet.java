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

@WebServlet("/tag/detail")
public class TagDetailServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
      String tagName = request.getParameter("tagName");

      response.setContentType("text/html;charset=UTF-8");
      
      TagDao tagDao = (TagDao)ContextLoaderListener.applicationContext.getBean("tagDao");
      ArrayList<Tag> tags = tagDao.getOne(tagName);

      RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tag/detail.jsp");
      request.setAttribute("tags", tags);
      request.setAttribute("tagDao", tagDao);
      requestDispatcher.include(request, response);
      
      // String tagContent = tagDao.getContent(tags.getContentNo());


    } catch (Exception e) {
      request.setAttribute("error", e);
      RequestDispatcher requestDispatcher = request.getRequestDispatcher("/error");
      requestDispatcher.forward(request, response);
      return;
    }
  }
}