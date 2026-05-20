#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int choice;
    float num1, num2, result;
    pid_t pid;

    while (1) {
        printf("\n===== Calculator =====\n");
        printf("1. Addition\n");
        printf("2. Subtraction\n");
        printf("3. Multiplication\n");
        printf("4. Division\n");
        printf("5. Exit\n");

        printf("Enter your choice: ");
        scanf("%d", &choice);

        if (choice == 5) {
            printf("Exiting...\n");
            break;
        }

        printf("Enter two numbers: ");
        scanf("%f %f", &num1, &num2);

        pid = fork();

        if (pid < 0) {
            printf("Fork failed!\n");
            return 1;
        }

        // Child Process
        else if (pid == 0) {

            switch (choice) {
                case 1:
                    result = num1 + num2;
                    printf("\n[Child Process] Addition Result = %.2f\n", result);
                    break;

                case 2:
                    result = num1 - num2;
                    printf("\n[Child Process] Subtraction Result = %.2f\n", result);
                    break;

                case 3:
                    result = num1 * num2;
                    printf("\n[Child Process] Multiplication Result = %.2f\n", result);
                    break;

                case 4:
                    if (num2 == 0) {
                        printf("\n[Child Process] Division by zero not allowed!\n");
                    } else {
                        result = num1 / num2;
                        printf("\n[Child Process] Division Result = %.2f\n", result);
                    }
                    break;

                default:
                    printf("\nInvalid choice!\n");
            }

            exit(0);
        }

        // Parent Process
        else {
            wait(NULL);
            printf("[Parent Process] Child completed calculation.\n");
        }
    }

    return 0;
}