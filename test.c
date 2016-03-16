
#include <string.h>
#include <stdio.h>

extern char *my_strchr(const char *s, int c);
extern char *my_rindex(const char *s, int c);

int	main(int ac, char **av)
{
  int c = av[2][0];

  printf("------ tests ------\n");
  printf("strchr: %s\n", strchr(av[1], c));
  printf("index: %s\n", index(av[1], c));
  printf("my_strchr: %s\n", my_strchr(av[1], c));
  printf("\n----- r tests -----\n");
  printf("strrchr: %s\n", strrchr(av[1], c));
  printf("rindex: %s\n", rindex(av[1], c));
  printf("my_rindex: %s\n", my_rindex(av[1], c));
}
