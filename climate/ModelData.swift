import Foundation
import Firebase

var events: Events = initevents()

func initevents()->Events {
    let events0 : Events = loadj()
    addData(events: events0)
    return events0
}

    func addData(events: Events) {
        //Get a reference to the database
        let db = Firestore.firestore()

        //Add a document to a collection
        for e in events.events{
            db.collection("events").document(e.id).setData(["id": e.id, "start_timestamp": e.start_timestamp, "end_timestamp": e.end_timestamp, "summary": e.summary, "description": e.description, "status": e.status, "sponsor": e.sponsor, "co_sponsors": e.co_sponsors, "location": e.location, "contact": e.contact, "categories": e.categories, "link": e.link, "event_url": e.event_url, "submitted_by": e.submitted_by, "webcast_url": e.webcast_url, "series_name": e.series_name, "presenter": e.presenter, "image": e.image, "image_alt_text": e.image_alt_text], merge: true) { error in
                if error == nil {
                    //no errors
                    //Call get data to retrieve the latest data
                    //self.getData()
                    let docRef = Firestore.firestore().collection("events").document(e.id)
                    docRef.getDocument { (document, error) in
                        if let document = document, document.exists {
                            let data = document.data()
                            // Check if the field exists in data
                            if data?["feedBack"] == nil {
                                db.collection("events").document(e.id).setData(["feedBack":[]], merge: true)
                            }
                            
                            if data?["feedBackAns"] == nil {
                                db.collection("events").document(e.id).setData(["feedBackAns":[:]], merge: true)
                            }
                            
                        } else {
                            print("Document does not exist")
                        }
                    }
                }
                else {
                    //Handle the error
                }
            }
        }
    }


let urlstr = URL(string:"https://calendar.duke.edu/events/index.json?&future_days=1&feed_type=simple")
func loadj()->Events{
    do {
        //let contents = try String(contentsOf: urlstr!, encoding: .ascii)
        let data = try Data(contentsOf: urlstr!)
        //print("----------------------------------")
        //print(contents)
        //print("----------------------------------")
        do {
            let decoder = JSONDecoder()
            //let events = try decoder.decode(Events.self, from: data)
            return try decoder.decode(Events.self, from: data)
        } catch {
            print(error)
            fatalError("Couldn't parse")
        }
        //var events: Events = self.parse(jsonData: data)
        //print("*********************")
    } catch {
      // handle error
    }
    return Events(events: [])
}
