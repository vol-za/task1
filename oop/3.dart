abstract class Vehicle {
  void drive();
  void stop() => print('Stopped moving');
  bool isSpeedLimitUp(double speed, double speedLimit) => speed > speedLimit;
}

class Car extends Vehicle {
  double speed;
  String color;
  int _engineStatus;

  Car(this.speed, this.color, this._engineStatus);

  get getEngineStatus => _engineStatus;

  set setEngineStatus(int status) => _engineStatus = status;

  @override
  void drive() => print('Car is driving');
}

class Bicycle extends Vehicle {
  double speed;
  String color;
  int engineStatus;

  Bicycle(this.speed, this.color, this.engineStatus);

  @override
  void drive() => print('Bicycle is driving');
}

void main() {
  final car = Car(65, "black", 1);
  if (!car.isSpeedLimitUp(car.speed, 60)) {
    car.drive();
    car.stop();
  }

  
  final bicycle = Bicycle(20, "black", 0);
    if (!bicycle.isSpeedLimitUp(bicycle.speed, 60)) {
    bicycle.drive();
    bicycle.stop();
  }
}
