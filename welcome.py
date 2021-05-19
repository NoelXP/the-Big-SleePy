#!/usr/bin/env python2

# Noel Presents: Welcome to the Arcade!
from arcade import rps, hangman

def start():
    print ("Welcome to Noel's Arcade!")
    game_choice = input("1.Rock-Paper-Scissors\n2.Hangman\n3.(Development) Poker\nMake a choice:")
    try:
            if game_choice is 1:
                rps.start()
                return
            if game_choice is 2:
                hangman.start()
                return
            if game_choice is 3:
                print("Poker is a future game. Please make another selection")
    except ValueError:
        pass
    print ("Oops! I did not understand that. Please enter 1, 2, or 3.")
        
if __name__ == '__main__':
    start()
    