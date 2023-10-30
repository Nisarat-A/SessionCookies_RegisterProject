package int202.register.cookiessession.register.servlets;


import int202.register.cookiessession.register.models.CourseRepository;
import int202.register.cookiessession.register.models.Semester;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Map;

@WebServlet(name = "CourseListServlet", value = "/course-list")
public class CourseListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("semesters", Semester.getAllSemesterText());
        getServletContext().getRequestDispatcher("/course_list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, String[]> parameterMap = request.getParameterMap();
        request.setCharacterEncoding("UTF-8");
        if (parameterMap.get("semester") == null) {
            doGet(request, response);
            return;
        }
        int semester = Integer.valueOf(parameterMap.get("semester")[0]);
        request.setAttribute("semesters", Semester.getAllSemesterText());
        request.setAttribute("selectedSemester", semester);
        request.setAttribute("subjects", CourseRepository.getSubjects(semester));
        getServletContext().getRequestDispatcher("/course_list.jsp").forward(request, response);
    }
}
 
