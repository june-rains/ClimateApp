//
//  ReportModel.swift
//  climate
//
//  Created by 李昌昊 on 2022/7/5.
//

import Foundation
import Firebase
import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

class ReportModel: ObservableObject {
    @Published var questionList = [String]()
    @Published var ansDict : Dictionary<String, [String]> = [:]
    
    func data(){
            let db = Firestore.firestore()
            db.collection("reports").document("1")
                .addSnapshotListener { documentSnapshot, error in
                  guard let document = documentSnapshot else {
                    print("Error fetching document: \(error!)")
                    return
                  }
                    
                    
                    self.questionList = document.get("questionList") as! [String] ?? []
                    print("##########")
                    print(document.get("ansList"))
                    print("##########")
                    if document.get("ansList") == nil {
                        print("¥¥¥¥¥¥¥¥¥¥¥")
                        db.collection("reports").document("1").setData(["ansList": [:]], merge: true) { error in
                        
                                    if error == nil {
                                    }
                                }
                        self.ansDict = Dictionary<String, [String]>()
                        
                    } else {
                        self.ansDict = document.get("ansList") as! Dictionary<String, [String]> ?? [:]
                        if self.ansDict["cl580"] == nil {
                            self.ansDict["cl580"] = [String](repeating: "", count: self.questionList.count ?? 0)
                    }
                    }
                   
                  guard let data = document.data() else {
                    print("Document data was empty.")
                    return
                  }
                  print("Current data: \(data)")
                }
        
        }
    
    func binding(for key: String) -> Binding<[String]> {
        return Binding(get: {
            return self.ansDict[key] ?? []
        }, set: {
            self.ansDict[key] = $0
        })
    }
    
    
    func updateAns() {
        let db = Firestore.firestore()
        
        db.collection("reports").document("1").setData(["ansList": ansDict], merge: true) { error in
            if error == nil {
                //no errors
                //Call get data to retrieve the latest data
            }
            else {
                //Handle the error
            }
    }
    }
    
}
