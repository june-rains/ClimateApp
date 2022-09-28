package com.duke.webapp.service;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.Person;
import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.*;
import com.google.firebase.cloud.FirestoreClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

@Service
public class FirebaseService {
    @Autowired
    FirebaseInitialize fireb;
    public String saveEventDetails(Event event) throws ExecutionException, InterruptedException {
        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection("events").document(event.getId()).set(event);
                return collectionsApiFuture.get().getUpdateTime().toString();
    }

    public Event getEventDetails(String id) throws ExecutionException, InterruptedException {
        System.out.println("In Firebase getEventDetails service");
        Firestore dbFirestore = FirestoreClient.getFirestore();
        DocumentReference documentReference = dbFirestore.collection("events").document(id);
        ApiFuture<DocumentSnapshot> future = documentReference.get();

        DocumentSnapshot document = future.get();

        Event event = null;

        if(document.exists()) {
            event = document.toObject(Event.class);
            System.out.println("The description of the event is: " + event.getDescription());
            System.out.println("The location of the event is: " + event.getLocation());
            return event;
        } else {
            return null;
        }
    }

    public String updateEvent(Event event) throws ExecutionException, InterruptedException {
        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection("events").document(event.getId()).set(event, SetOptions.merge());
        return collectionsApiFuture.get().getUpdateTime().toString();
    }

    public String deleteEvent(String id) throws ExecutionException, InterruptedException {
        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection("events").document(id).delete();
        return collectionsApiFuture.get().getUpdateTime().toString();
    }

    public List<Event> getAllEvents() throws Exception {
        Events es = new Events();
        es.init();
        es.updateEventsInDataBase();

        Firestore dbFirestore = FirestoreClient.getFirestore();
        // asynchronously retrieve all documents
        ApiFuture<QuerySnapshot> future = dbFirestore.collection("events").get();
        // future.get() blocks on response
        List<QueryDocumentSnapshot> documents = future.get().getDocuments();
        List<Event> events = new ArrayList<>();
        for (QueryDocumentSnapshot document : documents) {
            System.out.println(document.getId() + " => " + document.toObject(Event.class));
            events.add(document.toObject(Event.class));
        }
        return events;
    }
}
