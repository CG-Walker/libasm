#include "libasm.h"

#define STRLEN_TEST "test"
#define STRCPY_TEST "hello"
#define STRCMP_TEST_1 "yes"
#define STRCMP_TEST_2 "no"
#define STRDUP_TEST "woah"
#define READ_TEST "main.c"
#define WRITE_TEST "write\n"

int main(int argc, char **argv)
{
    printf("strlen:\n");
    printf("'%s' -> (mine : %ld) (real: %ld)\n\n", STRLEN_TEST, ft_strlen(STRLEN_TEST), strlen(STRLEN_TEST));

    printf("strcpy:\n");
    char buffer0[1000];
    ft_strcpy(buffer0, STRCPY_TEST);
    printf("'%s' -> '%s'\n\n", STRCPY_TEST, buffer0);

    printf("strcmp:\n");
    printf("'%s' and '%s' -> (mine : %d) (real : %d)\n\n", STRCMP_TEST_1, STRCMP_TEST_2, ft_strcmp(STRCMP_TEST_1, STRCMP_TEST_2), strcmp(STRCMP_TEST_1, STRCMP_TEST_2));
    
    printf("strdup:\n");
    char *tmp = strdup(STRDUP_TEST);
    printf("%s -> %s\n\n", STRDUP_TEST, tmp);

    printf("write:\n");
    char buffer1[1000];
    char buffer2[1000];
    int fd;
    fd = open(READ_TEST, O_RDONLY);
    ft_read(fd, buffer1, 900);
    close(fd);
    fd = open(READ_TEST, O_RDONLY);
    read(fd, buffer2, 900);
    close(fd);
    printf("fd : %s ->\n(mine :)\n%s\n\n(real :)\n%s\n\n", READ_TEST ,buffer1, buffer2);

    printf("read:\n");
    ft_write(0, WRITE_TEST, strlen(WRITE_TEST));
    write(0, WRITE_TEST, strlen(WRITE_TEST));

    return (0);
}