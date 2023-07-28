//
//  ContentView.swift
//  INTREST
//
//  Created by Lina Vorpahl on 28.07.23.
//

import SwiftUI
let samplePictures = ["picture1.jpg", "picture2.jpg"]
let noteText = "This is a beautiful place."
let likesText = "100 Likes"

let noteAttributes: [NSAttributedString.Key: Any] = [
    .font: UIFont.systemFont(ofSize: 14),
    .foregroundColor: UIColor.black
]

let likesAttributes: [NSAttributedString.Key: Any] = [
    .font: UIFont.boldSystemFont(ofSize: 16),
    .foregroundColor: UIColor.red
]

let noteAttributedString = NSAttributedString(string: noteText, attributes: noteAttributes)
let likesAttributedString = NSAttributedString(string: likesText, attributes: likesAttributes)

let myInterest = Interest(title: "Travel", pictures: samplePictures, note: noteAttributedString, likes: likesAttributedString)



struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Lina")
            Text(myInterest.title);
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import Foundation

class Interest {
    var title: String
    var pictures: [String]
    var note: NSAttributedString
    var likes: NSAttributedString

    init(title: String, pictures: [String], note: NSAttributedString, likes: NSAttributedString) {
        self.title = title
        self.pictures = pictures
        self.note = note
        self.likes = likes
    }
}
