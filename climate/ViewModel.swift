//
//  ViewModel.swift
//  climate
//
//  Created by 李昌昊 on 2022/6/24.
//

import Foundation
import Firebase
import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

class ViewModel: ObservableObject {
    @Published var userRecord = Dictionary<String, String>()
    @Published var event = Event(id: "")
    @Published var events = Events(events: [])
    @Published var approvedevents = Events(events: [])
    @Published var joinedevents = Events(events: [])
    @Published var ansDict : Dictionary<String, [String]> = [:]
    
    let context = CIContext()
    
    
    init() {
        getUpdatedEvents()
        getOwnedEvents()
        getJoinedEvents()
    }
    
    func deleteQuestion(feedback: String) {
        //Get a reference to the database
        let db = Firestore.firestore()
        event.feedBack?.removeAll { $0 == feedback }
        //Specify the document to delete
        db.collection("events").document(event.id).setData(["feedBack": event.feedBack], merge: true) { error in
            if error == nil {
                //no errors
                //Call get data to retrieve the latest data
            }
            else {
                //Handle the error
            }
    }
    }
    
    func addQuestion(feedback: String) {
        event.feedBack?.append(feedback)
        //Get a reference to the database
        let db = Firestore.firestore()

        //Add a document to a collection
        db.collection("events").document(event.id).setData(["feedBack": event.feedBack], merge: true) { error in
            if error == nil {
                //no errors
                //Call get data to retrieve the latest data
            }
            else {
                //Handle the error
            }
    }
}
    
    
    func getUserRecord(_id: String) {
        let db = Firestore.firestore()

        let docRef = db.collection("events").document(_id)
        
        docRef.getDocument { (document, error) in
        if let document = document, document.exists {
            self.userRecord = document.get("usersRecord") as? Dictionary<String, String> ?? Dictionary<String, String>()
            print("---------------------")
            print("initializing userRecord")
        let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
        print("Document data: \(dataDescription)")
    } else {
        print("Document does not exist")
    }
}
}
    
    func updateUserRecord(_id: String) {
        
        let db = Firestore.firestore()
        db.collection("events").document(_id).setData(["usersRecord": userRecord], merge: true) { error in
        
                    if error == nil {
                        self.getUserRecord(_id: _id)
                    }
                }
        
            }
           
    func getOwnedEvents(){
        let db = Firestore.firestore()
        
        // Create a reference to the cities collection
        let eventsref = db.collection("events")

        // Create a query against the collection.
        let query = eventsref.whereField("submitted_by", arrayContains: NetID)
        
        query
            .getDocuments() { snapshot, error in
                //check for errors
                if error == nil {
                    // No errors
                    if let snapshot = snapshot {
                        //Update the list property in the main thread
                        DispatchQueue.main.async {
                            //Get all the documents and create Todos
                            self.approvedevents.events = snapshot.documents.map { d in
                                //Create a Todo item for each document returned
                                return Event(id: d["id"] as? String ?? "",
                                             start_timestamp: d["start_timestamp"] as? String ?? "",
                                             end_timestamp: d["end_timestamp"] as? String ?? "",
                                             summary: d["summary"] as? String ?? "",
                                             description: d["description"] as? String ?? "",
                                             status: d["status"] as? String ?? "",
                                             sponsor: d["sponsor"] as? String ?? "",
                                             co_sponsors: d["co_sponsors"] as? [String] ?? [],
                                             location: d["location"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             contact: d["contact"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             categories: d["categories"] as? [String] ?? [],
                                             link: d["link"] as? String ?? "",
                                             event_url: d["event_url"] as? String ?? "",
                                             submitted_by: d["submitted_by"] as? [String] ?? [],
                                             webcast_url: d["webcast_url"] as? String ?? "",
                                             series_name: d["series_name"] as? String ?? "",
                                             presenter: d["presenter"] as? String ?? "",
                                             image: d["image"] as? String ?? "",
                                             image_alt_text: d["image_alt_text"] as? String ?? "",
                                             usersRecord: d["usersRecord"] as? Dictionary<String, String> ?? Dictionary<String, String>())
                            }
                      
                        }
                    }
    
                } else {
                    //Handle the error
                }
        }
    }
    
    
    func getJoinedEvents(){
        let db = Firestore.firestore()
        
        // Create a reference to the cities collection
        let eventsref = db.collection("events")
        let str = "usersRecord." + String("cl580")
        // Create a query against the collection.
        let query = eventsref.whereField(str,  isEqualTo: "joined")
        query.getDocuments() { snapshot, error in
                //check for errors
                if error == nil {
                    // No errors
                    if let snapshot = snapshot {
                        //Update the list property in the main thread
                        DispatchQueue.main.async {
                            //Get all the documents and create Todos
                            self.joinedevents.events = snapshot.documents.map { d in
                                //Create a Todo item for each document returned
                                return Event(id: d["id"] as? String ?? "",
                                             start_timestamp: d["start_timestamp"] as? String ?? "",
                                             end_timestamp: d["end_timestamp"] as? String ?? "",
                                             summary: d["summary"] as? String ?? "",
                                             description: d["description"] as? String ?? "",
                                             status: d["status"] as? String ?? "",
                                             sponsor: d["sponsor"] as? String ?? "",
                                             co_sponsors: d["co_sponsors"] as? [String] ?? [],
                                             location: d["location"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             contact: d["contact"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             categories: d["categories"] as? [String] ?? [],
                                             link: d["link"] as? String ?? "",
                                             event_url: d["event_url"] as? String ?? "",
                                             submitted_by: d["submitted_by"] as? [String] ?? [],
                                             webcast_url: d["webcast_url"] as? String ?? "",
                                             series_name: d["series_name"] as? String ?? "",
                                             presenter: d["presenter"] as? String ?? "",
                                             image: d["image"] as? String ?? "",
                                             image_alt_text: d["image_alt_text"] as? String ?? "",
                                             usersRecord: d["usersRecord"] as? Dictionary<String, String> ?? Dictionary<String, String>())
                            }
                      
                        }
                    }
    
                } else {
                    //Handle the error
                }
        }
    }
    
    func getUpdatedEvents(){
            //Get a reference to the database
            let db = Firestore.firestore()
            //read thec document at a specific path
            db.collection("events").getDocuments { snapshot, error in
                //check for errors
                if error == nil {
                    // No errors
                    if let snapshot = snapshot {
                        //Update the list property in the main thread
                        DispatchQueue.main.async {
                            //Get all the documents and create Todos
                            self.events.events = snapshot.documents.map { d in
                                //Create a Todo item for each document returned
                                return Event(id: d["id"] as? String ?? "",
                                             start_timestamp: d["start_timestamp"] as? String ?? "",
                                             end_timestamp: d["end_timestamp"] as? String ?? "",
                                             summary: d["summary"] as? String ?? "",
                                             description: d["description"] as? String ?? "",
                                             status: d["status"] as? String ?? "",
                                             sponsor: d["sponsor"] as? String ?? "",
                                             co_sponsors: d["co_sponsors"] as? [String] ?? [],
                                             location: d["location"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             contact: d["contact"] as? Dictionary<String, String> ?? Dictionary<String, String>(),
                                             categories: d["categories"] as? [String] ?? [],
                                             link: d["link"] as? String ?? "",
                                             event_url: d["event_url"] as? String ?? "",
                                             submitted_by: d["submitted_by"] as? [String] ?? [],
                                             webcast_url: d["webcast_url"] as? String ?? "",
                                             series_name: d["series_name"] as? String ?? "",
                                             presenter: d["presenter"] as? String ?? "",
                                             image: d["image"] as? String ?? "",
                                             image_alt_text: d["image_alt_text"] as? String ?? "",
                                             usersRecord: d["usersRecord"] as? Dictionary<String, String> ?? Dictionary<String, String>())
                            }
                      
                        }
                    }
    
                } else {
                    //Handle the error
                }
            }
    }
    
    
    func join(_id: String) {
        self.userRecord[NetID] = "joined"
        updateUserRecord(_id: _id)
    }

    func check_in(_id: String) {
        self.userRecord[NetID] = "checked_in"
        updateUserRecord(_id: _id)
    }
    
    func cancel(_id: String) {
        self.userRecord.removeValue(forKey: NetID)
        updateUserRecord(_id: _id)
    }
    
    func generateQRCode(from text: String) -> UIImage {
            var qrImage = UIImage(systemName: "xmark.circle") ?? UIImage()
            let data = Data(text.utf8)
            let filter = CIFilter.qrCodeGenerator()
            filter.setValue(data, forKey: "inputMessage")

            let transform = CGAffineTransform(scaleX: 20, y: 20)
            if let outputImage = filter.outputImage?.transformed(by: transform) {
                if let image = context.createCGImage(
                    outputImage,
                    from: outputImage.extent) {
                    qrImage = UIImage(cgImage: image)
                }
            }
            return qrImage
        }
    
  
    func binding(for key: String) -> Binding<[String]> {
        return Binding(get: {
            return self.ansDict[key] ?? []
        }, set: {
            self.ansDict[key] = $0
        })
    }
    
    
    func updateAns(_id: String) {
        let db = Firestore.firestore()
        
        db.collection("events").document(_id).setData(["feedBackAns": ansDict], merge: true) { error in
            if error == nil {
                //no errors
                //Call get data to retrieve the latest data
            }
            else {
                //Handle the error
            }
        
        
        
    }
    }
    func data(_id : String){
            let db = Firestore.firestore()
            db.collection("events").document(_id)
                .addSnapshotListener { documentSnapshot, error in
                  guard let document = documentSnapshot else {
                    print("Error fetching document: \(error!)")
                    return
                  }
                    self.event.id = _id
                    if !(document.get("image") is NSNull) {
                        self.event.image = document.get("image") as? String ?? ""
                    }
                    if !(document.get("summary") is NSNull) {
                        self.event.summary = document.get("summary") as? String ?? ""
                    }
                    if !(document.get("start_timestamp") is NSNull) {
                        self.event.start_timestamp = document.get("start_timestamp") as? String ?? ""
                    }
                    if !(document.get("end_timestamp") is NSNull) {
                        self.event.end_timestamp = document.get("end_timestamp") as?  String ?? ""
                    }
                    if !(document.get("location") is NSNull) {
                        self.event.location = document.get("location") as?  Dictionary<String, String> ?? [:]
                    }
                    if !(document.get("description") is NSNull){
                        self.event.description = document.get("description") as? String ?? ""
                    }
                    if !(document.get("feedBack") is NSNull) {
                        print(document.get("feedBack"))
                        self.event.feedBack = document.get("feedBack") as? [String] ?? []
                    }
                    if !(document.get("feedBackAns") is NSNull){
                        self.event.feedBackAns = document.get("feedBackAns") as?  Dictionary<String, [String]> ?? Dictionary()
                        self.ansDict = (document.get("feedBackAns") as? Dictionary<String, [String]> ?? [:])!
                        if self.event.feedBackAns?[NetID] == nil {
                            self.event.feedBackAns?[NetID] = [String](repeating: "", count: self.event.feedBack?.count ?? 0)
                            self.ansDict[NetID] = [String](repeating: "", count: self.event.feedBack?.count ?? 0)
                        }
                    }
                    
                    
                  guard let data = document.data() else {
                    print("Document data was empty.")
                    return
                  }
                  print("Current data: \(data)")
                }
        
        }
}
