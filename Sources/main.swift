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
    print("               Now built in SWIFT!")
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
    displayBoard()
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
