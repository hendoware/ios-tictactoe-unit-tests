//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Check vertical wins
    for x in 0..<3 {
        var numberOfMarks = 0
        for y in 0..<3{
            if board[(x, y)] == player {
                numberOfMarks += 1
            }
        }
        if numberOfMarks == 3 {
            return true
        }
    }
    
    // Check horizontal wins
    for y in 0..<3 {
        var numberOfMarks = 0
        for x in 0..<3{
            if board[(x, y)] == player {
                numberOfMarks += 1
            }
        }
        if numberOfMarks == 3 {
            return true
        }
    }
    
    
    
    
    if board[(0,0)] == board[(1,1)] && board[(0,0)] == board[(2,2)] {
        return true
    }
    if board[(2,0)] == board[(1,1)] && board[(2,0)] == board[(0,2)] {
        return true
    }
    
    return false
    
}
