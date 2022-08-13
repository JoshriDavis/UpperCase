#include <iostream>
#include <string>

int main()
{
    std::string userInput;
    std::cout << "Type a string:" << std::endl;
    //std::cin >> userInput; // takes input from the user
    std::getline(std::cin, userInput);
    int secondLetter = 0; // Used to determine if the current letter is a second letter or not.
   
    for(int i = 0; userInput[i] != '\0'; i++) // in this loop the program changes every second letter into uppercase.
    {
        if(secondLetter==1)
        {
            userInput[i] = toupper(userInput[i]);
        }
        if(isalpha(userInput[i])==0 && userInput[i]!=' ') // Checks if the user used non alphabetic charecters.
        {
            std::cout << "Please try again, using only English alphabetic characters.";
            break;
        }
        if(secondLetter==0)
        {
            secondLetter = 1;
        }
        else
        {
            secondLetter = 0;
        }
    }
            std::cout << "New string = " << userInput << std::endl; // Prints the new string here.
    return 0;  
}

