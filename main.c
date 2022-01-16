#include "libasm.h"
char *ft_sup(char *);

#include <sys/errno.h>

int main() {
	char r[654];
	char str[611] = "vbhckmdl,sxl,";
	int fd = open("test", O_RDONLY);
	// printf("|%zu|\n", ft_strlen("hello, world!!\n"));
	// printf("|%zu|\n", strlen("hello, world!!\n"));
	// printf("|%s|\n", ft_strcpy(r, str));
	// printf("|%s|\n", strcpy(r, str));
	// printf("|%d|\n", ft_strcmp("Hello" , "Hello 42!"));
	// printf("|%d|\n", strcmp("Hello", "Hello 42!"));
	// printf("|%zd|\n", ft_read(fd ,r, 11));
	// printf("%s\n", r);
	// printf("|%zd|\n", read(fd ,r, 11));
	// printf("%s\n", r);
	// printf("|%zd| %d\n", ft_write(1 ,NULL, 9), errno);
	// printf("|%zd| %d\n", write(1 ,NULL, 9), errno);
	// printf("%s\n",strerror(errno));
	// printf("|%zd| %d\n", ft_read(1 , str, 9), errno);
	// printf("|%zd| %d\n", read(1 , str, 9), errno);
	
	// printf("%s\n",strerror(errno));
	// printf("|%zd|\n", write(-1 ,"bonjou", 9));
	// ft_read(fd, str, 11);
	// printf("|%s|\n", str);
	// read(fd, str, 11);
	printf("|%s|\n", ft_strdup(NULL));
	// printf("|%s|\n", strdup(NULL));



}
