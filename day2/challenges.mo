1. Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
average_array(array : [Int]) -> async Int. 

import Array "mo:base/Array";
import Int "mo:base/Int";

actor {
  let array = [10, 11, 12];
  public func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    var size : Int = array.size();
    for (element in array.vals()) {
      sum += element;
       };
       return Int.div(sum : Int, size : Int);
    };
}

2. Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
count_character(t : Text, c : Char) -> async Nat
import Nat "mo:base/Nat";

actor {
  var sum : Nat = 0;
  public func count_character(t : Text, c : Char) : async Nat {
   for(el in t.chars()) {
      if (el == c) {
        sum := sum + 1;
      } else {
      }
     return (sum);
    };
};
}
3. Write a function factorial that takes a natural number n and returns the factorial of n.
factorial(n : Nat) ->  async Nat
actor {
  var counter : Nat = 0;
  var fac : Nat = 1;
  public func factorial(n : Nat) :  async Nat {
    loop {
      counter := counter + 1;
      if(counter <= n) {
        fac := (fac * counter);
      };
    };
   return fac;
  };
}
4. Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
number_of_words(t : Text) -> async Nat 
5. Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
find_duplicates(a : [Nat]) -> async [Nat]
import Array "mo:base/Array";

actor {
  let array = [0,1,1,3];
  public func find_duplicates(a : [Nat]) : async [Nat] {
  Array.map<Nat, Nat>(array, func x = x);
  };
}
6. Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
convert_to_binary(n : Nat) -> async Text