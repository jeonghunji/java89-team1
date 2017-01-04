package bitcamp.java89.ems2.control.todo;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import bitcamp.java89.ems2.control.PageController;
import bitcamp.java89.ems2.dao.TodoDao;
import bitcamp.java89.ems2.domain.Todo;

@Controller("/todo/list.do")
public class TodoListControl implements PageController {

  @Autowired TodoDao todoDao;
  
  @Override
  public String service(HttpServletRequest request, HttpServletResponse response) throws Exception {
    ArrayList<Todo> list = todoDao.getList();
    

    request.setAttribute("todoes", list);
    request.setAttribute("title", "할일관리-목록");
    request.setAttribute("contentPage", "/todo/list.jsp");
    return "/main.jsp";
  }
}
