#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/* extern	size_t	strlen(const char *str);*/
/* extern char	*my_strchr(const char *str, int c); */
/* extern	void	*my_memset(void *s, int c, size_t n); */
/* extern void	*my_memcpy(void *dest, const void *src, size_t n); */
/* extern void	*my_memccpy(void *dest, const void *src, int c, size_t n); */
/* int		my_strcmp(const char *s1, const char *s2); */
extern void	*my_memmove(void *dest, const void *src, size_t n);
/* extern int	my_strncmp(const char *s1, const char *s2, size_t n); */
/* extern int	my_strcasecmp(const char *s1, const char *s2); */
/* extern int	my_strncasecmp(const char *s1, const char *s2, size_t n); */
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

/* void		print_str(char *str) */
/* { */
/*   --str; */
/*   while (++(*str) != 0) */
/*     write(1, str, 1); */
/* } */

char		*da_strcat(char *dest, char *src)
{
  int i = strlen(dest) - 3;
  while (src[i] != '\0')
    {
      dest[i] = src[i];
      i++;
    }
  return (dest);
}

void		test_case1(char *dest, char *src, size_t n)
{
  char		*str;
  char		*str2;
  char		*str3;
  char		*str4;

  str = strdup(dest);
  str2 = strdup(src);
  str3 = strdup(dest);
  str4 = strdup(src);
  printf("%s\n", memmove(str, str2, n));
  printf("%s\n", my_memmove(str3, str4, n));
}

void		test_case2(char *dest, char *src, size_t n)
{
  char		*str;
  char		*str2;
  char		*str3;

  char		*m_str;
  char		*m_str2;
  char		*m_str3;

  printf("\n----TEST----\n");

  str3 = malloc(100);
  str = strdup(dest);
  str2 = strdup(src);
  str3 = strcpy(str3, str);
  printf("pre_check: %s\n", str3);
  str3 = da_strcat(str3, str2);
  printf("pre_check2: %s\n", str3);

  printf("----MINE----\n");
  m_str3 = malloc(100);
  m_str = strdup(dest);
  m_str2 = strdup(src);
  m_str3 = strcpy(m_str3, m_str);
  printf("check: %s\n", m_str3);
  m_str3 = da_strcat(m_str3, m_str2);
  printf("check2: %s\n", m_str3);

  printf("%s\n", memmove(str, str2, n));
  printf("%s\n", my_memmove(m_str, m_str2, n));
}

void		test_case3(char *dest, char *src, size_t n)
{
  char		*str;
  char		*str2;
  char		*str3;

  char		*m_str;
  char		*m_str2;
  char		*m_str3;

  printf("\n----TEST3----\n");

  str3 = malloc(100);
  str = strdup(dest);
  str2 = strdup(src);
  str3 = strcpy(str3, str2);
  printf("pre_check: %s\n", str3);
  str3 = da_strcat(str3, str);
  printf("pre_check2: %s\n", str3);

  printf("----MINE----\n");
  m_str3 = malloc(100);
  m_str = strdup(dest);
  m_str2 = strdup(src);
  m_str3 = strcpy(m_str3, m_str2);
  printf("check: %s\n", m_str3);
  m_str3 = da_strcat(m_str3, m_str);
  printf("check2: %s\n", m_str3);

  printf("%s\n", memmove(str, str2, n));
  printf("%s\n", my_memmove(m_str, m_str2, n));
}

int		main(int ac, char **av)
{
  int n = atoi(av[3]);
  test_case1(av[1], av[2], (size_t)n);
  test_case2(av[1], av[2], (size_t)n);
  test_case3(av[1], av[2], (size_t)n);
  return (0);
}
