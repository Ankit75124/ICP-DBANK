import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank{

  stable var currentValue: Float =300;
  currentValue := 300;
  Debug.print(debug_show(currentValue));


  stable var startTime=Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));


  let id= 2345673;
  // Debug.print(debug_show(id));

  public func topUp(){
    currentValue +=1;
    Debug.print(debug_show(currentValue));
  };
  public func topDown(){
    currentValue -=3;
    Debug.print(debug_show(currentValue));
  };
  public func topUpM(amount: Float){
    currentValue +=amount;
    Debug.print(debug_show(currentValue));
  };
  public func withdrawl(amount:Float){
    let tempValue: Float =currentValue-amount;
    if(tempValue >=0){
      currentValue -=amount;
    Debug.print(debug_show(currentValue));
    }
    else{
      Debug.print("To large, enter smalll no");
    }
    
  };

  public query func checkbalance(): async Float{
    return currentValue;
  };
  // topUp();

  public func compound() {
    let currentTime =Time.now();
    let timeElapsedNS =currentTime -startTime;
    let timeElapsedS =timeElapsedNS/1000000000;
    let timeElapsedM = timeElapsedS/60;
    currentValue := currentValue *(1.01 ** Float.fromInt(timeElapsedM));
    startTime:= currentTime;
  };
};
