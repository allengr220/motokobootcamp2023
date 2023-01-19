1.
actor {
  var product : Nat = 0;

  public func multiply(n : Nat, m : Nat) : async Nat {
    product := n * m;
    return product;
  };
  
}

2. 
actor {
  var cube_vol : Nat = 0;

  public func volume(n : Nat) : async Nat {
    cube_vol := n * n * n;
    return cube_vol;
  };
  
}

3.
actor {
  var minutes : Nat = 0;

  public func hours_to_minutes(n : Nat) : async Nat {
    minutes := n * 60;
    return minutes;
  };
  
}

4. 
actor {
  var counter : Nat = 0;

  public func set_counter(n : Nat) : async () {
    counter := n;
    return;
  };

  public func get_counter() : async Nat {
    return counter;
  };
  
}

5.
actor {
  var mod : Nat = 0;

  public func test_divide(n: Nat, m : Nat) : async Bool {
    mod := m % n;
     if(mod == 0) {
       return true;
     } else {
       return false;
     }
  
  };
  
}
6.
actor {
  var mod : Nat = 0;

  public func is_even(n: Nat) : async Bool {
    mod := n % 2;
     if(mod == 0) {
       return true;
     } else {
       return false;
     }
  
  };
  
}