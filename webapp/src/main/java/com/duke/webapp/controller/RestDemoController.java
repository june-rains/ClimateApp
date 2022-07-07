package com.duke.webapp.controller;

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

    @GetMapping("/getUserDetails")
    public Person getExample(@RequestHeader() String name) throws ExecutionException, InterruptedException {
        System.out.println("query user with name " + name);
        return fireBaseService.getUserDetails(name);
    }

    @PostMapping("/createUser")
    public String postExample(@RequestBody Person person) throws ExecutionException, InterruptedException {
        return fireBaseService.saveUserDetails(person);
    }

    @PutMapping("/updateUser")
    public String putExample(@RequestBody Person person) throws ExecutionException, InterruptedException {
        return fireBaseService.updateUser(person);
    }

    @DeleteMapping("/deleteUser")
    public String deleteExample(@RequestHeader String name) throws ExecutionException, InterruptedException {
        return fireBaseService.deleteUser(name);
    }


}
