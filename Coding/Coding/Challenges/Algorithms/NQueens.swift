//
//  NQueens.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 64: N Queens
 Difficulty: Taxing
 There are M different ways you can place N queens on an NxN chessboard so that none of them are able to capture others. Write a function that calculates them all and prints them to the screen as a visual board layout, and returns the number of solutions it found.
 Tip: A queen moves in straight lines vertically, horizontally, or diagonally. You need to place all eight queens so that no two share the same row, column, or diagonal.
 Tip: In the more advanced version of this challenge you would be required to return only the fundamental solutions, which means unique positions excluding rotations and reflections. This is not a requirement here.
 Sample input and output
 •    In an 8x8 board you need to place 8 queens. There are 92 possible arrangements, so your function should print each of them then return 92.  
 •    In a 10x10 board you need to place 10 queens. There are 724 possible arrangements, so your function should print each of them then return 724.  Here is a suggested example layout for solutions:  
 .......Q
 ...Q....
 Q.......
 ..Q.....
 .....Q..
 .Q......
 ......Q.
 ....Q...
 */

struct NQueens {
    
    func nQueens(board: [Int], queenNumber: Int) -> Int {
        
        if queenNumber == board.count {
            
            // we hit a colution - print it out
            print("Solution:", board)
            
            for row in 0 ..< board.count {
                for col in 0 ..< board.count {
                    
                    if board[row] == col {
                        print("Q", terminator: "")
                    } else {
                        print(".", terminator: "")
                    }
                }
                print("")
            }
            print("")
            return 1
        } else {
            
            // keep track how many solutions were found by our recursive
            var count = 0
            
            // loop over every column
        boardLoop: for column in 0 ..< board.count {
            
            // check over every column
            for row in 0 ..< queenNumber {
                // find where this queen was placed
                let otherQueenColumn = board[row]
                
                // if this queen is placed in the column we are checking, stop checking ither queens and go to the necst column
                if otherQueenColumn == column { continue boardLoop }
                
                let deltaRow = queenNumber - row
                let deltaCol = otherQueenColumn - column
                
                if deltaRow == deltaCol { continue boardLoop }
                if deltaRow == -deltaCol { continue boardLoop }
                
            }
            
            var boardCopy = board
            boardCopy[queenNumber] = column
            
            count += nQueens(board: boardCopy, queenNumber: queenNumber + 1)
        }
            return count
        }
    }
}
