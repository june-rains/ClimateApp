package com.duke.webapp.service;

import com.duke.webapp.Dao.Person;
import com.duke.webapp.service.FirebaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Service
public class Events {
    @Autowired
    FirebaseService fireBaseService;

    //List<Event> events;
    //Person p;

    @PostConstruct
    public void init() throws ExecutionException, InterruptedException {
//        Person p = fireBaseService.getUserDetails("ahz");
//        System.out.println(p.getLocation());
    }
}
