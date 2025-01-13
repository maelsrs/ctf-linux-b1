#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void run_curl(const char *url) {
    char command[256];
    snprintf(command, sizeof(command), "curl %s", url);
    system(command);
}

int main(int argc, char *argv[]) {
    if (setuid(1006) != 0) {
        perror("setuid failed");
        return 1;
    }

    if (argc != 2) {
        fprintf(stderr, "Usage: %s <URL>\n", argv[0]);
        return 1;
    }
    
    run_curl(argv[1]);
    return 0;
}