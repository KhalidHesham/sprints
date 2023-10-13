case class Car(make: String, model: String, speed: Double)

val car1 = Car("Toyota", "Corolla", 120.5)
val car2 = Car("Honda", "Civic", 110.2)

if (car1.speed > car2.speed) {
  println(s"${car1.make} ${car1.model} is faster than ${car2.make} ${car2.model}.")
} else if (car1.speed < car2.speed) {
  println(s"${car2.make} ${car2.model} is faster than ${car1.make} ${car1.model}.")
} else {
  println("Both cars have the same speed.")
}