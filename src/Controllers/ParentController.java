package Controllers;
import 
import pe.edu.utp.spwebprofile.models.spService;
import pe.edu.utp.spwebprofile.models.Region;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "ParentController", urlPatterns = "/regions")
public class ParentController extends javax.servlet.http.HttpServlet {
    spService service;
    String url;

    public ParentController() {
        super();
        service = new spService();
        url = "";
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processRequest("POST", request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        processRequest("GET", request, response);
    }

    private void processRequest(String method, HttpServletRequest request, HttpServletResponse response)  throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");

        if(method.equals("GET")) {
            // Index Action
            if(action.equals("index")) {
                List<Region> regions = service.findAllRegions();
                request.setAttribute("regions", regions);
                url = "listRegions.jsp";
            }
            if(action.equals("show")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Region region = service.findRegionById(id);
                request.setAttribute("region", region);
                url = "showRegion.jsp";
            }
            if(action.equals("new")) {
                url = "newRegion.jsp";
            }
            if(action.equals("edit")) {
                int id = Integer.parseInt(request.getParameter("id"));
                Region region = service.findRegionById(id);
                request.setAttribute("region", region);
                url = "editRegion.jsp";
            }
        }

        if(method.equals("POST")) {
            // Create Action
            if(action.equals("create")) {
                String name = request.getParameter("name");
                Region region = service.createRegion(name);
                List<Region> regions = service.findAllRegions();
                request.setAttribute("regions", regions);
                url = "listRegions.jsp";
            }
            if(action.equals("update")) {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                boolean isUpdated = service.updateRegion(id, name);
                List<Region> regions = service.findAllRegions();
                request.setAttribute("regions", regions);
                url = "listRegions.jsp";
            }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
}







