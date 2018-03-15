//
//  DataBaseService.swift
//  SpotSwap
//
//  Created by Yaseen Al Dallash on 3/14/18.
//  Copyright © 2018 Yaseen Al Dallash. All rights reserved.
//

import Foundation
import FirebaseDatabase
class DataBaseService {
    static let manager = DataBaseService()
    var dataBaseRef: DatabaseReference
    var userRef: DatabaseReference
    var carMakes: DatabaseReference
    var spotRef: DatabaseReference
    private init(){
        // this will intialize the reference of the data base to the root of the FireBase dataBase
        self.dataBaseRef = Database.database().reference()
        self.userRef = dataBaseRef.child("users")
        self.carMakes = dataBaseRef.child("carMakes")
        self.spotRef = dataBaseRef.child("spots")
    }
    func getDataBaseRef()->DatabaseReference{return dataBaseRef}
    func getUserRef()->DatabaseReference{return userRef}
    func getCarMakesRef()->DatabaseReference{return carMakes}
    func getSpotsRef() -> DatabaseReference {return spotRef}
}