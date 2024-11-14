//
//  CalendarData.swift
//  GridCalendar
//
//  Created by Otavio Lourenço on 14/11/2024.
//

import Foundation

struct Day: Identifiable {
    let id = UUID()
    let value: Int
}

struct Month {
    let name: String
    let numberOfDays: Int
    var days: [Day]
    
    init(name: String, numberOfDays: Int) {
        self.name = name
        self.numberOfDays = numberOfDays
        self.days = []
        
        for n in 1...numberOfDays{
            self.days.append(Day(value: n))
        }
    }
}

let year = [
       Month(name: "January", numberOfDays: 31),
       Month(name: "February", numberOfDays: 28),
       Month(name: "March", numberOfDays: 31),
       Month(name: "April", numberOfDays: 30),
       Month(name: "May", numberOfDays: 31),
       Month(name: "June", numberOfDays: 30),
       Month(name: "July", numberOfDays: 31),
       Month(name: "August", numberOfDays: 31),
       Month(name: "September", numberOfDays: 30),
       Month(name: "October", numberOfDays: 31),
       Month(name: "November", numberOfDays: 30),
       Month(name: "December", numberOfDays: 31),
   ]
