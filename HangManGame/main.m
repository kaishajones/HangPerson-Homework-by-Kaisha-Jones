//
//  main.m
//  HangManGame
//
//  Created by Kaisha Jones on 6/18/15.
//  Copyright (c) 2015 Kaisha Jones. All rights reserved.
//  Kaisha Jones Homework

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hey, Let's play Hang Person");
        
        // Secret Word
        char secretWord[] = "faith";
        
        
        // Current state of guessed word
        char guessedWord[] = "_____";
        
        // Max of wrong attempts
        int maxNumberOfWrongAttempts = 4;
        
        int wrongAttempts = 0;
        
        // Max right attempts
        int maxNumberOfRightAttempts = 5;
        
        int rightAttempts = 0;
        
        // Begin the game
        
        
        printf("Hint Word: believe \n");
        // Here's a hint
        
        while (true) {
            
            // Enter a letter
            char userGuess;
            
            printf("Guess a letter \n\n");
            scanf("%c", &userGuess);
            
            //            printf("%c \n", userGuess);
            fpurge(stdin);
            
            //            int i = userGuess;
            //            int count = sizeof(secretWord);
            
            int match = 0;
            for (int i = 0; i < strlen(secretWord); i++) {
                if (userGuess == secretWord[i]) {
                    guessedWord[i] = userGuess;
                    match = 1;
                }
//
//            }for (int i = 0; i < strlen(guessedWord); i++) {
//                  if (userGuess != secretWord[i]) {
//                  guessedWord[i] = userGuess;
//                  match = 0;
//                }
            }
            if (match == 0) {
                printf("\n no match, sorry try again. \n");
                wrongAttempts++; //
            }
            if (match != 0) {
                printf("\n Great, You have a match!");
                rightAttempts++;
                
            
            if (wrongAttempts > maxNumberOfWrongAttempts) {
                printf("Sorry dude, you lose");
                break;
            }
                if (rightAttempts == maxNumberOfRightAttempts) {
                printf("CONGRATS, YOU WIN!\n");
                break;
                }
            printf("\n");
            for (int i = 0; i < strlen(secretWord); i++) {
                printf("%c ", guessedWord[i]);
            }
            printf("\n");

            
            
            
        }
    }
    return 0;
}

    //                This is my old code below
    
    //                char currentLetter = secretWord[i]; {
    //                printf("_____", userGuess);
    //                char f = secretWord[0];
    //                char a = secretWord[1];
    //                char i = secretWord[2];
    //                char t = secretWord[3];
    //                char h = secretWord[4];
    //
    //                if (userGuess = secretWord[0]) {
    //                    printf("%c____", f);
    //                    if (userGuess = secretWord[1]) {
    //                        printf("%c%c___", a);
    //                    }
    //
    //
    

// determine if the letter is in our secret word
//      // alert the user
// printf("Great Job! %c____", f);
// keep track of number of wrong guesses

// if it is in our word
// alert good job
// update the current state of our guessed word

// did they win?

// did they lose?
// printf("Nope, sorry try again\n", secretWord);
// print the current state of our guess word

// Repeat


//
//
//      
//
//

//
//
        }
