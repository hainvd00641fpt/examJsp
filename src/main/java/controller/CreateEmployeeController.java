package controller;

import com.googlecode.objectify.ObjectifyService;
import entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static com.googlecode.objectify.ObjectifyService.ofy;

public class CreateEmployeeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/employee.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectifyService.register(entity.Employee.class);
        entity.Employee employee = new Employee();

        employee.setFullName(req.getParameter("fullname"));
        employee.setAddress(req.getParameter("address"));
        employee.setBirthday(req.getParameter("birthday"));
        employee.setDepartment(req.getParameter("department"));
        employee.setPosition(req.getParameter("position"));
        ofy().save().entity(employee).now();


        resp.sendRedirect("/list.jsp");
    }
}
