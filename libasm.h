#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <unistd.h>
# include <fcntl.h>
# include <errno.h>
# include <string.h>
# include <stdlib.h>

size_t  ft_strlen(const char *str);
ssize_t ft_read(int fd, const void *buf, size_t len);
ssize_t ft_read(int fd, const void *buf, size_t len);
int     ft_strcmp(const char *s1, const char *s2);
char    ft_strcpy(char *dst, const char *src);
char    ft_strdup(const char *str);

#endif