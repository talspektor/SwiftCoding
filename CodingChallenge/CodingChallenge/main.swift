//
//  main.swift
//  CodingChallenge
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 27: Print last lines
 Difficulty: Easy Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all
 on a single line separated by commas.
 
 Sample input and output
 Here is your test input file:
 Antony And Cleopatra
 Coriolanus
 Cymbeline
 Hamlet
 Julius Caesar
 King Lear
 Macbeth
 Othello
 Twelfth Night

     •    If asked to print the last 3 lines, your code should output “Twelfth Night, Othello, Macbeth”.  
     •    If asked to print the last 100 lines, your code should output “Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra”.  
     •    If asked to print the last 0 lines, your could should print nothing.
 */

func printLastLines(filename: String, lineCount: Int) {
    guard let input = try? String(contentsOfFile: filename) else { return }
    var lines = input.components(separatedBy: "\n")
    guard lines.count > 0 else { return }
    lines.reverse()
    
    for i in 0 ..< min(lines.count, lineCount) {
        print(lines[i])
    }
}


printLastLines(filename: "sampleInput.txt", lineCount: 100)

/*
 Challenge 28: Log a message
 Difficulty: Easy
 Write a logging function that accepts accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date.
 Tip: It’s important that you add line breaks along with each message, otherwise the log will just become jumbled.
 Sample input and output
     •    If the file does not exist, running your function should create it and save the new message.  
     •    If it does exist, running your function should load the existing content and append the message to the end, along with suitable line breaking.
 */

func logMessage(log message: String, to logFile: String) {
    
    var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
    existingLog.append("\(Date()): \(message)\n")
    
    do {
        _ = try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
    } catch {
        
        
        print("Failed to write to log: \(error.localizedDescription)")
    }
}

logMessage(log: "If your reading this, then the function worked", to: "myFile")
