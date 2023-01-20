1. In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
second_maximum(array : [Int]) ->  Int;

import Array "mo:base/Array";
import Int "mo:base/Int";
actor {
     
let array = [4, 2, 6];
public func second_maximum(array: [Int]) : async Int {
    let arr_sortd : [Int] = Array.sort(array, Int.compare);
    return arr_sortd[(array.size()-2)];
};
}

2. In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
remove_even(array : [Nat]) -> [Nat];

import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {
     let f = func (n : Nat) : Bool {
        if (n % 2 == 0 ) {
            return false
        } else {
            return true
        };
    };

let array = [4, 2, 6];
public func remove_even(array : [Nat]) : async [Nat] {
        return(Array.filter<Nat>(array, f));
    };

}

3. In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
⛔️ Do not use a loop.

drop<T> : (xs : [T], n : Nat) -> [T]

import Array "mo:base/Array";
import Nat "mo:base/Nat";
actor {
     let f = func (n : Nat, ) : Bool {
        if (i <= n ) {
            return false
        } else {
            return true
        };
    };

let array = [4, 2, 6];
public func drop<T> : (xs : [T], n : Nat) : async [T]{
        return(Array.mapEntries<Nat, Nat>(array, func (i, x) ));
    };

}
