//
//  FloodFill.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 63: Flood fill
 Difficulty: Taxing
 Write a function that accepts a two-dimensional array of integers that are 0 or 1, a new number to place, and a position to start. You should read the existing number at the start position, change it to the new number, then change any surrounding numbers that matched the start number, then change any surrounding those, and so on - like a flood fill algorithm in Photoshop.
 Tip #1: If you value your sanity, you will add import GameplayKit then generate your grid using this code:
 let random = GKMersenneTwisterRandomSource(seed: 1)
 var grid = (1...10).map { _ in (1...10).map { _ in
 Int(random.nextInt(upperBound: 2)) } }
 That will allow you to produce the same grid every time, which ought to make debugging easier. (Note: I made grid a variable rather than a constant for a reason.)
 Tip #2: A flood fill works by filling grid positions directly above, below, to the left, and to the right, stopping only when a different number is encountered.
 Tip #3: If the arrays contained all zeros, filling 5 would cause the arrays to contain all 5s because all numbers would be filled.
 Sample input and output
 Given the following set up:
 let random = GKMersenneTwisterRandomSource(seed: 1)
 let grid = (1...10).map { _ in (1...10).map { _ in
 Int(random.nextInt(upperBound: 2)) } }

 You will have the following grid:
 [0, 0, 0, 0, 0, 1, 0, 0, 1, 1]
 [0, 1, 1, 0, 0, 0, 0, 1, 0, 0]
 [0, 1, 0, 0, 0, 0, 0, 0, 1, 1]
 [1, 0, 1, 0, 0, 1, 1, 0, 0, 0]
 [1, 0, 1, 0, 1, 1, 1, 1, 1, 0]
 [1, 0, 1, 1, 0, 0, 0, 0, 0, 0]
 [0, 0, 0, 0, 1, 1, 1, 0, 1, 1]
 [1, 1, 1, 0, 0, 1, 1, 1, 1, 1]
 [1, 1, 0, 1, 1, 1, 1, 0, 0, 0]
 [0, 1, 1, 0, 0, 1, 0, 1, 1, 1]
 After running this code:
 challenge63(fill: 5, in: grid, at: (x: 2, y: 0)) You will have the following grid:
 [5, 5, X, 5, 5, 1, 5, 5, 1, 1]
 [5, 1, 1, 5, 5, 5, 5, 1, 0, 0]
 [5, 1, 5, 5, 5, 5, 5, 5, 1, 1]
 [1, 0, 1, 5, 5, 1, 1, 5, 5, 5]
 [1, 0, 1, 5, 1, 1, 1, 1, 1, 5]
 [1, 0, 1, 1, 5, 5, 5, 5, 5, 5]
 [0, 0, 0, 0, 1, 1, 1, 5, 1, 1]
 [1, 1, 1, 0, 0, 1, 1, 1, 1, 1]
 [1, 1, 0, 1, 1, 1, 1, 0, 0, 0]
 [0, 1, 1, 0, 0, 1, 0, 1, 1, 1]
 Note, in the above grid I marked with X where the fill started, but that will be a five too.
 */

struct FloodFill {
    
    func floodFill(fill: Int, in grid: [[Int]], at point: (x: Int, y: Int)) -> [[Int]] {
        
        var returnValue = grid
        var squaresToFill = [point]
        let startNumber = grid[point.y][point.x]
        
        func tryAddMove(_ move: (x: Int, y: Int)) {
            
            guard move.x >= 0 else { return }
            guard move.x < 10 else { return }
            guard move.y >= 0 else { return }
            guard move.y < 10 else { return }
            
            squaresToFill.append(move)
        }
        
        while let square = squaresToFill.popLast() {
            
            guard returnValue[square.y][square.x] != fill else { continue }
            
            returnValue[square.y][square.x] = fill
            tryAddMove((x: square.x, y: square.y - 1))
            tryAddMove((x: square.x, y: square.y + 1))
            tryAddMove((x: square.x - 1, y: square.y))
            tryAddMove((x: square.x + 1, y: square.y))
                    
        }
        return returnValue
    }
    
    func floodFill2(fill newNumber: Int, in grid: inout [[Int]], at point: (x: Int, y: Int), relpacing: Int? = nil) {
        
        // bail if this position is invalid
        guard point.x >= 0 else { return }
        guard point.x < 10 else { return }
        guard point.y >= 0 else { return }
        guard point.y < 10 else { return }
        
        // "replaceing" will be set on 2nd and subswquent runs
        let startNumber = relpacing ?? grid[point.y][point.x]
        
        if grid[point.y][point.x] == startNumber {
            
            // adjust this point
            grid[point.y][point.x] = newNumber
            
            // adn fill in surrounding squares
            floodFill2(fill: newNumber, in: &grid, at: (x: point.x, y: point.y - 1), relpacing: startNumber)
            floodFill2(fill: newNumber, in: &grid, at: (x: point.x, y: point.y + 1), relpacing: startNumber)
            floodFill2(fill: newNumber, in: &grid, at: (x: point.x - 1, y: point.y), relpacing: startNumber)
            floodFill2(fill: newNumber, in: &grid, at: (x: point.x + 1, y: point.y), relpacing: startNumber)
        }
    }
}
