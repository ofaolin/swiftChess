// The Swift Programming Language
// https://docs.swift.org/swift-book

import Darwin
import Foundation

func clearScreen() {
    print("\u{001B}[2J")
}

func displayTitle() {
    print("  ██████╗██╗  ██╗███████╗███████╗███████╗")
    print(" ██╔════╝██║  ██║██╔════╝██╔════╝██╔════╝")
    print(" ██║     ███████║█████╗  ███████╗███████╗")
    print(" ██║     ██╔══██║██╔══╝  ╚════██║╚════██║")
    print(" ╚██████╗██║  ██║███████╗███████║███████║")
    print("  ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝")
    print("               By: Tyler Phalen, Now built in SWIFT! and supporting UCI")
}

func displayBoard() {
    let boardSize: Int = 8
    clearScreen()
    print(" --- --- --- --- --- --- --- ---")
    for _ in 1...boardSize {
        print("|", terminator: "")
        for row in 1...boardSize {
            print("   |", terminator: "")
            if row == boardSize {
                print("")
                print(" --- --- --- --- --- --- --- ---")
            }
        }
    }
}
func printChessBoard() {
    let whitePieces = ["♜", "♞", "♝", "♛", "♚", "♝", "♞", "♜"]
    let blackPieces = ["♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖"]

    print("    a   b   c   d   e   f   g   h")
    print("  ┌───┬───┬───┬───┬───┬───┬───┬───┐")

    for row in 0..<8 {
        print("\(8-row) │", terminator: "")
        for col in 0..<8 {
            var piece = " "
            if row == 1 {
                piece = "♙"
            } else if row == 6 {
                piece = "♟"
            } else if row == 0 {
                piece = blackPieces[col]
            } else if row == 7 {
                piece = whitePieces[col]
            }
            print(" \(piece) │", terminator: "")
        }
        print(" \(8-row)")

        if row < 7 {
            print("  ├───┼───┼───┼───┼───┼───┼───┼───┤")
        }
    }

    print("  └───┴───┴───┴───┴───┴───┴───┴───┘")
    print("    a   b   c   d   e   f   g   h")
}

func runMenu() -> Int {
    var selector = 3
    while selector != 0 && selector != 1 && selector != 2 {
        print("0. Quit")
        print("1. Load Save Game")
        print("2. Start New Game")
        print("Make a Selection: ", terminator: "")
        let input = readLine()!

        switch input {
        case "0":
            print("You selected to quit the game")
            selector = 0
            break
        case "1":
            print("You selected to load a saved game")
            selector = 1
            break
        case "2":
            print("You selected to start a new game")
            selector = 2
            break
        default: (print("Please make a valid selection"))
        }
    }
    return selector
}

func loadSave() {
    print("this feature isn't built yet... sorry")
}

func newGame() {
    clearScreen()
    print("Here is the fancy, shiny new board")
    printChessBoard()
}

func gameSelector(selector: Int) {
    switch selector {
    case 0:
        print("Goodbye!")
    case 1:
        print("loading saved game...")
        loadSave()
    case 2:
        print("Starting new game...")
        newGame()
    default:
        print("ERROR...invalid selection")
    }
}

displayTitle()
gameSelector(selector: runMenu())
