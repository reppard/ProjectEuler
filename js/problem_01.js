//Problem One - Find the sum of all the multiples of 3 or 5 below 1000.

var sum = 0;

var getItDog = function(){
  for(i = 1; i < 1000; i++){
    if (( i % 3) == 0 || (i % 5 == 0 )){
      sum += i;
    }
  }
  print(sum);
}

getItDog();
