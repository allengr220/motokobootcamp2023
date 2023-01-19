1. Who controls the Ledger canister?
Answer:r7inp-6aaaa-aaaaa-aaabq-cai

2. What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? 
subnet id:pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
How much nodes are running this subnet?
nodes: 16 

3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
Answer: 16.875

4. What is wrong with the following code?
Answer: Need to import base library. Let t : Text =  "Hello"; is superfluous.

import Nat "mo:base/Nat";
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}

5. What is wrong with the following code?
Answer: The languages array is immutable and cannot use the var Text type. And a public function cannot return the mutable type var Text. 

actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}

6. What is wrong with the following code?
Answer: Need to import base library.
import Array "mo:base/Array";

actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}