//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Sean Hendrix on 12/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameboardTests: XCTestCase {
    
    var board = GameBoard()
    
    override func setUp() {
        board = GameBoard()
    }
    
    func testCreatingEmptyBoard() {
        for x in 0..<3 {
            for y in 0..<3 {
                let coordinate = (x, y)
                XCTAssertNil(board[coordinate])
            }
        }
        XCTAssert(!board.isFull)
    }
    
    func testPlacingMarks() {
        for x in 0..<3 {
            for y in 0..<3 {
                let coordinate = (x, y)
                XCTAssertNoThrow(try board.place(mark: .x, on: coordinate))
                XCTAssertEqual(board[coordinate], GameBoard.Mark.x)
            }
        }
        XCTAssert(board.isFull)
    }
}

