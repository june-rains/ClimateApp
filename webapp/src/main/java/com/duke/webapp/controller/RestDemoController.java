package com.duke.webapp.controller;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
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

    @PutMapping("/updateEvent")
    public String putExample(@RequestBody Event event) throws ExecutionException, InterruptedException {
        return fireBaseService.updateEvent(event);
    }

    @DeleteMapping("/deleteEvent")
    public String deleteExample(@RequestHeader String id) throws ExecutionException, InterruptedException {
        return fireBaseService.deleteEvent(id);
    }


}
