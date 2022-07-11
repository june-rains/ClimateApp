package com.duke.webapp.controller;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.ExecutionException;

@RestController
//@RequestMapping("/tests")
public class RestDemoController {
    @Autowired
    FirebaseService fireBaseService;

    @GetMapping("/getEventDetails")
    public Person getExample(@RequestHeader() String id) throws ExecutionException, InterruptedException {
        System.out.println("query user with id " + id);
        return fireBaseService.getEventDetails(id);
    }

    @PostMapping("/createEvent")
    public String postExample(@RequestBody Event event) throws ExecutionException, InterruptedException {
        return fireBaseService.saveEventDetails(event);
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
