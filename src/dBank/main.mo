import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

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
  let tempValue : Int = currentValue - amount ;
  if(tempValue>=0){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  }
  else{
    Debug.print("Insufficient funds");
  }
  };
  
 // query function used to perform read operations on canisters
  public query func checkBalance() : async Nat{
   return currentValue;
  };


}

