package com.duke.webapp.controller;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.OverAllReport;
import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ExecutionException;

@RestController
@CrossOrigin(origins = "http://vcm-29657.vm.duke.edu:8090")
public class RestDemoController {
    @Autowired
    FirebaseService fireBaseService;



    @GetMapping("/getAllEvents")
    public List<Event> getAll() throws Exception {

        return fireBaseService.getAllEvents();
    }


    @GetMapping("/getEventDetails")
    public Event getExample(@RequestHeader() String id) throws ExecutionException, InterruptedException {
        System.out.println("query event with id " + id);
        return fireBaseService.getEventDetails(id);
    }



    @PostMapping("/createEvent")
    public String postExample(@RequestBody Event event) throws ExecutionException, InterruptedException {
        return fireBaseService.saveEventDetails(event);
    }

    @PostMapping("/creatOverAllReport")
    @ResponseBody
    public void postOverAllReport(@RequestBody OverAllReport report, HttpServletRequest request, HttpServletResponse response) throws ExecutionException, InterruptedException {
//        System.out.println("***********************");
//        System.out.printf((String) request.getAttribute("Shib-Identity-Provider"));

        try{
//            RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
//            if (requestAttributes instanceof ServletRequestAttributes) {
//                HttpServletRequest request = ((ServletRequestAttributes)requestAttributes).getRequest();
//                System.out.printf((String) request.getAttribute("Shib-Identity-Provider"));
//            }


            System.out.println(request.getAttribute("AJP_eppn"));
//            while(params.hasMoreElements()){
//                String paramName = params.nextElement();
//                System.out.println("Parameter Name - "+paramName+", Value - "+request.getParameter(paramName));
//            }
            //System.out.println(request.getHeaderNames());
            //System.out.printf((String) request.getAttribute("Shib-Identity-Provider"));
        } catch(Exception e) {
            System.out.println(e);
        }

        fireBaseService.saveOverAllReport(report);
    }

    @GetMapping("/getAllOverAllReports")
    public List<OverAllReport> getOverAllReports() throws ExecutionException, InterruptedException {
        return fireBaseService.getAllReports();
    }

    @PutMapping("/updateEvent")
    public String putExample(@RequestBody Event event) throws ExecutionException, InterruptedException {
        return fireBaseService.updateEvent(event);
    }

    @DeleteMapping("/deleteEvent")
    public String deleteExample(@RequestHeader String id) throws ExecutionException, InterruptedException {
        return fireBaseService.deleteEvent(id);
    }


}
