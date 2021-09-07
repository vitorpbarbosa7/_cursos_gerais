/*
    PROGRAM:  exercise-3-10-1.c
    AUTHOR:   Haidar Al-Aubiydy
    DATE:
*/

/**************************************************************************
/* Declare include files
 **************************************************************************/
#include <stdio.h>
#include <stdlib.h>

/**************************************************************************
/* Defines
 **************************************************************************/
//N/A

/**************************************************************************
/* Function prototypes
**************************************************************************/
void func_one( );
void func_two( );


/**************************************************************************
 * Function: int main( void );
 **************************************************************************/
int main( void )
{
    int selection=0;

    while(selection != 3)
    {
        printf("1. call function 1\n");
        printf("2. call function 2\n");
        printf("3. exit\n");
        printf("please choose one 1, 2 or 3: ");

        scanf("%d", &selection);

        switch(selection)
        {
            case 1:
                func_one();
                break;
            case 2:
                func_two();
                break;
            case 3:
                printf("exiting...");
                break;
            default:
                printf("error, you did not select 1, 2, or 3\n");
        }
    }

	return EXIT_SUCCESS;
}

/**************************************************************************
 * Function: void func_one( );
 **************************************************************************/
void func_one( )
{
	printf("Hello I am function one\n");
}


/**************************************************************************
 * Function:  void func_two( );
 **************************************************************************/
void func_two( )
{
	printf("Hello I am function two\n");
}
