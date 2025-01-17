import Debug "mo:base/Debug";
import Int "mo:base/Int";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 123432;

  Debug.print(debug_show(id));

  public func topUp (amount: Nat) {
    currentValue += amount;
    // Debug.print(`TopUp successfully completed. Current balance: ${debug_show(currentValue)}`);
    Debug.print(debug_show(currentValue));
  };

  public func withdraw (amount: Nat) {
    let difference: Int = currentValue - amount;

    if (difference >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Cannot withdraw more than the current account balance");
    }
    
  };
}