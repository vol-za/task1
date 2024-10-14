abstract class Vehicle {
  void drive();
  void stop() => print("${this.toString()} stopped");
}

class Car extends Vehicle {

  @override
  void drive() {
    // TODO: implement drive
  }

}

class Bicycle extends Vehicle {
  @override
  void drive() {
    // TODO: implement drive
  }

}