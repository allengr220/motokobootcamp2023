1. Is the heap memory saved when upgrading a canister? How much heap memory does a canister has?
Answer: The heap memory is not saved when upgrading. Canisters have 4 Gb of hea memory.

2. How much accounts can a unique Principal own?
Answer: Account #s to a maximum of 4,294,967,295.

3. Can we safely upgrade a canister from interface A to interface B?
Interface A
Answer: No, the upgrade would lead to a loss of all surname data.

actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```motoko
Interface B
```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}