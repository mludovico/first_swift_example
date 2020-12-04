//
//  main.swift
//  SwiftExample
//
//  Created by marcelo on 04/12/2020.
//  Copyright © 2020 EPTV. All rights reserved.
//

import Foundation

class Track{
    let name: String
    let instructor: String
    
    init(name: String, instructor: String) {
        self.name = name
        self.instructor = instructor
    }
}

class Teacher{
    
}

let tracks: [Track] = [
    Track(name: "Mobile", instructor: "Tommy"),
    Track(name: "Web", instructor: "Brian"),
    Track(name: "Games", instructor: "Colton")
]

let students = [
    "Harry", "Ron", "Hermione"
]

var assignments: [String : Track] = [:]

for student in students{
    let track = tracks[Int.random(in: 0 ..< tracks.count)]
    assignments[student] = track
}

for (student, track) in assignments{
    print("\(student) got \(track.name) with \(track.instructor)")
}
