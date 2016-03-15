#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/* extern	size_t	strlen(const char *str);*/
/* extern char	*my_strchr(const char *str, int c); */
/* extern	void	*my_memset(void *s, int c, size_t n); */
/* extern void	*my_memcpy(void *dest, const void *src, size_t n); */
/* int		my_strcmp(const char *s1, const char *s2); */
extern void	*my_memmove(void *dest, const void *src, size_t n);
/* extern int	my_strncmp(const char *s1, const char *s2, size_t n); */
/* extern int	strcasecmp(const char *s1, const char *s2); */
/* extern char	*my_strstr(const char *haystack, const char *needle); */
/* extern char	*my_strpbrk(const char *s, const char *accept); */
/* extern size_t	my_strcspn(const char *s, const char *reject); */


/* void		*my_memcpy(void *dest, const void *src, size_t n) */
/* { */
/*   if (n > 0) */
/*     { */
/*       ((char *)dest)[0] = ((char *)src)[0]; */
/*       ((char *)dest)[0] = (char)src; */
/*       my_memcpy(dest + 1, src + 1, n - 1); */
/*     } */
/*   return (dest); */
/* } */

/* void		memcpy_test(int ac, char **av) */
/* { */
/*   int		i; */
/*   char		*s; */

/*   i = 0; */
/*   s = malloc(10); */
/*   s = memset(s, 0, 10); */
/*   while (++i < ac) */
/*     { */
/*     /\* printf("%d\n", (unsigned int)my_strlen(av[i])); *\/ */
/*       s = (char *)memset(s, 97, 10); */
/*       printf("real memset: %s\n", s); */
/*       s = (char *)my_memset(s, 99, 14); */
/*       printf("my memset: %s\n", s); */
/*     } */
/* } */

/* int		strcmp(char *str1, char *str2) */
/* { */
/*   if (str1[0] == str2[0]) */
/*     if (str[0] != '\0' || str[0] != '\0') */
/*       my_strcmp(str + 1, str + 1); */
/*     else */
/*       return (0); */
/*   else */
/*     return (str - str2); */
/* } */

/* int		my_strcmp(char *s1, char *s2) */
/* { */
/*   while (*s1 != '\0' && *s2 != '\0') */
/*     { */
/*       if (*s1 != *s2) */
/* 	return (*s1 - *s2); */
/*       s1++; */
/*       s2++; */
/*     } */
/*   return (*s1 - *s2) */
/* } */

/* char		*strstr(const char *s1, const char *s2) */
/* { */
/*   char		*tmp; */

/*   if (*s1 != 0 && *s2 != 0) */
/*     { */
/*       tmp = s2; */
/*       while (*s1 == *s2 && *s2 != 0) */
/* 	{ */
/* 	  s1++; */
/* 	  s2++; */
/* 	} */
/*       if (*s2 == 0) */
/* 	return (tmp); */
/*       s2 = tmp; */
/*     } */
/*   else */
/*     return (NULL); */
/* } */

int		main(int ac, char **av)
{
  printf("ret: %s\n", (char *)memmove(av[1], av[2], 5));
  printf("ret: %s\n", (char *)my_memmove(av[1], av[2], 5));
}
