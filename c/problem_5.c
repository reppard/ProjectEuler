// 2520 is the smallest number that can be divided by each of the numbers from
// 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible
// by all of the numbers from 1 to 20?

#include <stdio.h>

int evenly_divisible(unsigned int n)
{
  int test_cases[] = {11,13,14,16,17,18,19,20};
  int i = 0;

  for(i = 0; i < sizeof(test_cases) / sizeof(int); i++)
  {
    if(n % test_cases[i] != 0)
    {
      return 0;
    }
  }
  return 1;
}

int main( int argc, char *argv[])
{
  unsigned int n = 20;

  while(!evenly_divisible(n)){
    n += 20;
  }

  printf("%d\n", n);
  return 0;
}
