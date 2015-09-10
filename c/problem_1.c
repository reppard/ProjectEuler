#include <stdio.h>

int main(int argc, char *argv[])
{
  int i = 0;
  int sum = 0;
  
  while(i<1000){
    if(!(i % 5) || !(i % 3)) {
      sum += i;
    }
    i++;
  }

  printf("%d\n", sum);
  return 0;
}
