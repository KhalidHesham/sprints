// Base Car class
class Car(val make: String, val model: String) {
  // Properties
  var speed: Double = 0.0

  // Methods
  def accelerate(acceleration: Double): Unit = {
    speed += acceleration
  }

  def brake(deceleration: Double): Unit = {
    speed -= deceleration
  }
}

// Derived SportsCar class
class SportsCar(make: String, model: String) extends Car(make, model) {
  // Additional properties specific to sports cars
  var turbocharged: Boolean = true
}

// Derived FamilyCar class
class FamilyCar(make: String, model: String) extends Car(make, model) {
  // Additional properties specific to family cars
  var passengers: Int = 4
}

// Example usage
object CarComparisonApp {
  def main(args: Array[String]): Unit = {
    // Create instances of different cars
    val sportsCar = new SportsCar("Ferrari", "458")
    val familyCar = new FamilyCar("Toyota", "Camry")

    // Accelerate the cars
    sportsCar.accelerate(50.0)
    familyCar.accelerate(30.0)

    // Print the speeds
    println(s"Sports Car Speed: ${sportsCar.speed} mph")
    println(s"Family Car Speed: ${familyCar.speed} mph")
  }
}
