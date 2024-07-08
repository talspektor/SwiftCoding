//
//  TicTacToeWinner.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 60: Tic-Tac-Toe winner
 Difficulty: Tricky Create a function that detects whether either player has won in a game of Tic-Tac-Toe.
 Tip: A tic-tac-toe board is 3x3, containing single letters that are either X, O, or empty. A win is three Xs or Os in a straight line.
 Sample input and output
     •    The array [["X", "", "O"], ["", "X", "O"], ["", "", "X"]] should return true.  
     •    The array [["X", "", "O"], ["X", "", "O"], ["X", "", ""]] should return true.  
     •    The array [["", "X", ""], ["O", "X", ""], ["O", "X", ""]] should return true.  
     •    The array [["", "X", ""], ["O", "X", ""], ["O", "", "X"]] should return false.  
     •    The array [["", "", ""], ["", "", ""], ["", "", ""]] should return false.
 */

struct TicTacToeWinner {
    
    func tictactoeWinner(_ board: [[String]]) -> Bool {
        
        for i in 0 ..< 3 {
            
            // check each row
            if board[i][0] != "" && board[i][0] == board[i][1] && board[i][0] == board[i][2] {
                
                return true
            }
            
            // check each column
            if board[0][i] != "" && board[0][i] == board[1][i] && board[0][i] == board[2][i] {
                
                return true
            }
        }
        
        // now check diagonally top left to bottom right
        if board[0][0] != "" && board[0][0] == board[1][1] && board[0][0] == board[2][2] {
            
            return true
        }
        
        // and check diagonally bottom left to top right
        if board[0][2] != "" && board[0][2] == board[1][1] && board[0][2] == board[2][0] {
            
            return true
        }
        
        // if we're still here thers'a no winner
        return false
    }
    
    func tictactoeWinner2(_ board: [[String]]) -> Bool {
        
        func isWin(first: String, _ second: String, _ third: String) -> Bool {
            
            guard first != "" else { return false }
            return first == second && first == third
        }
        
        for i in 0 ..< 3 {
            
            if isWin(first: board[i][0], board[i][1], board[i][2]) {
                
                return true
            }
            
            if isWin(first: board[0][i], board[1][i], board[2][i]) {
                
                return true
            }
        }
        
        if isWin(first: board[0][0], board[1][1], board[2][2]) {
            
            return true
        }
        
        if isWin(first: board[0][1], board[1][1], board[2][0]) {
            
            return true
        }
        
        return false
    }
    
    func tictactoeWinner3(_ board: [[String]]) -> Bool {
        
        func isWin(first: String, _ second: String, _ third: String) -> Bool {
            
            guard first != "" else { return false }
            return first == second && first == third
        }
        
        for i in 0 ..< 3 {
            if isWin(first: board[i][0], board[i][1], board[i][2]) {
                
                return true
            }
            
            if isWin(first: board[0][i], board[1][i], board[2][i]) {
                
                return true
            }
        }
        
        return isWin(first: board[0][0], board[1][1], board[2][2]) || isWin(first: board[0][1], board[1][1], board[2][0])
    }
}
