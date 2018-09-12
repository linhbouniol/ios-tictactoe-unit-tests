//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // TDD - Test Driven Development, write test before we write the game funcitonality
    
    // A win is when there is 3 marks in a row
    
    // Check verticals
    for x in 0..<3 {    // go through every column
        var numMarks = 0    // reset every time we move to check another column
        
        for y in 0..<3 {    // go through each row in this column
            if board[(x, y)] == player {
                numMarks += 1
            }
        }
        
        if numMarks == 3 {
            return true
        }
    }
    
    // check horizontals 
    for y in 0..<3 {    // go through every row
        var numMarks = 0

        for x in 0..<3 {    // go through each column in this row
            if board[(x, y)] == player {
                numMarks += 1
            }
        }

        if numMarks == 3 {
            return true
        }
    }
    
    return false
}
