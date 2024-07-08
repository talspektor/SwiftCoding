//
//  PointsToAngles.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 62: Points to angles
 Difficulty: Tricky Write a function that accepts an array of CGPoint pairs, and returns an array of the angles
 between each point pair. Return the angles in degrees, where 0 or 360 is straight up.
 Tip: If it helps your thought process, imagine each point pair as being two touches on the screen: you have the first touch and the second, what is the angle between them?
 Sample input and output
 Here is some code you can test with:
 var points = [(first: CGPoint, second: CGPoint)]()
 points.append((first: CGPoint.zero, second: CGPoint(x: 0, y:
 -100)))
 points.append((first: CGPoint.zero, second: CGPoint(x: 100, y:
 -100)))
 points.append((first: CGPoint.zero, second: CGPoint(x: 100, y:
 0)))
 points.append((first: CGPoint.zero, second: CGPoint(x: 100, y:
 100)))
 points.append((first: CGPoint.zero, second: CGPoint(x: 0, y:
 100)))
 points.append((first: CGPoint.zero, second: CGPoint(x: -100, y:
 100)))
 points.append((first: CGPoint.zero, second: CGPoint(x: -100, y:
 0)))
 points.append((first: CGPoint.zero, second: CGPoint(x: -100, y:
 -100)))
 print(challenge62(points: points))
 If your code has worked correctly, that should print [0.0, 45.0, 90.0, 135.0, 180.0, 225.0, 270.0, 315.0]. Returning 360.0 for the first number is also acceptable.
 */

struct PointsToAngles {
    
    func pointToAngle(points: [(first: CGPoint, second: CGPoint)]) -> [CGFloat] {
        
        return points.map {
            
            let radians = atan2($0.first.y - $0.second.y, $0.first.x - $0.second.x)
            var degrees = (radians * 180 / CGFloat.pi) - 90
            
            if (degrees < 0) { degrees += 360.0 }
            if degrees == 360 { degrees = 0 }
            
            return degrees
        }
    }
}
