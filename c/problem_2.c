#include <stdio.h>

unsigned int fib(unsigned int n)
{
  return n < 2 ? n : fib(n-1) + fib(n-2);
}
int main(int argc, char *argv[])
{
  unsigned int n = 0;
  unsigned int sum = 0;
  unsigned int value = 0;

  while(value < 4000000){
    value = fib(n);
    if(!(value % 2)){
      sum += value;
    }
    n++;
  }
  printf("%d\n", sum);
  return 0;
}
