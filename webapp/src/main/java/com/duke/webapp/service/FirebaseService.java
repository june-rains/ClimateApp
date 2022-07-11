package com.duke.webapp.service;

import com.duke.webapp.Dao.Event;
import com.duke.webapp.Dao.Person;
import com.google.api.core.ApiFuture;
import com.google.cloud.firestore.DocumentReference;
import com.google.cloud.firestore.DocumentSnapshot;
import com.google.cloud.firestore.Firestore;
import com.google.cloud.firestore.WriteResult;
import com.google.firebase.cloud.FirestoreClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;

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
        Firestore dbFirestore = FirestoreClient.getFirestore();
        DocumentReference documentReference = dbFirestore.collection("events").document(id);
        ApiFuture<DocumentSnapshot> future = documentReference.get();

        DocumentSnapshot document = future.get();

        Event event = null;

        if(document.exists()) {
            event = document.toObject(Event.class);
            return event;
        } else {
            return null;
        }
    }

    public String updateEvent(Event event) throws ExecutionException, InterruptedException {
        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection("events").document(event.getId()).set(event);
        return collectionsApiFuture.get().getUpdateTime().toString();
    }

    public String deleteEvent(String id) throws ExecutionException, InterruptedException {
        Firestore dbFirestore = FirestoreClient.getFirestore();
        ApiFuture<WriteResult> collectionsApiFuture = dbFirestore.collection("events").document(id).delete();
        return collectionsApiFuture.get().getUpdateTime().toString();
    }

}
