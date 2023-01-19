1.How much is the current memory capacity of a canister?

Answer:
Wasm heap: 4GB
Stable mem: 32 GB or 48 GB
according to: https://forum.dfinity.org/t/32-gb-canister-storage/16452
or:https://forum.dfinity.org/t/increased-canister-smart-contract-memory/6148/139

2. What is the issue with the following code sample?
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

Answer: The variable 'counter' was declared an immutable variable with 'let', therefore it cannot be changed/incremented. 

3. What is the issue with the following code sample?
actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

Answer:
First the value 0 assigned to message is not Text. It would need "" added like so:"0"
If this is changed you still can't enter a new_message unless change_message is given an async return Text and is made to return message. 
Even if all these changes are made see_message always returns 0 as change_message is a query func and cannot change the state of the declared variable message.

4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

Answer: False