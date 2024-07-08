//
//  ContentView.swift
//  Coding
//
//  Created by Tal Spektor on 28/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    func isContainSame(string1: String, string2: String) -> Bool {
        var checkString = string2
        
        for letter in string1 {
            
            if let index = checkString.firstIndex(of: letter) {
                checkString.remove(at: index)
            } else {
                return false
            }
        }
        
        return checkString.count == 0
    }
    
    func isContainSame2(string1: String, string2: String) -> Bool {
        
        let array1 = Array(string1)
        let array2 = Array(string2)
        
        return array1.sorted() == array2.sorted()
    }
    
    var body: some View {
        VStack {
            Button {
                print("  The r  ain in  Spain  ".removeDoubleSpaceRegex())
            } label: {
                Text("Push ")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
