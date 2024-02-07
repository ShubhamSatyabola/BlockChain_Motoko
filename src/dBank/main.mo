import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank {
  var currentValue = 300;
  currentValue := 100;
 let id = 23444884;
  // Debug.print(debug_show(id));

//function to toup a wallet
public func topUp(amount:Nat){
    currentValue += amount;
     Debug.print(debug_show(currentValue));
  };

public func withdraw(amount:Nat){
    currentValue -= amount;
     Debug.print(debug_show(currentValue));
  };


}

