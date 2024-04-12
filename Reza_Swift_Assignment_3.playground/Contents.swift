// create a super class
class Ship {
    
    // define three properties
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    // assign value using initializer
      init(name: String, year: Int, countryOfOrigin: String){
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
      }
} // class ship

// create a subclass
class Crouse: Ship {
    // define  properties
    var maxCapacity = 1000
    var oceanOfOperation = ""
    var currentPassengerCount = 0
    
    // define a method to add a passenger
    func addPassanger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Added a passanger and total passenger are \(currentPassengerCount).")
        }
        else {
            print("We could not add a passenger he capacity is full")
        }
    }

    // define a method to print the current passenger count
    func countPassenger(){
        print("The total of current passengers are \(currentPassengerCount).")
    }
} // crouse class


// create a subclass
class CargoShip: Ship {
    // define  properties
    var maxCargoCapacity = 10000
    var isInternational = true
    var currentCargoCount = 0
    
    // define a method to add cargo
    func addCargo() {
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount += 1
            print("Added a cargo and total cargo are \(currentCargoCount).")
        }
        else {
            print("We could not add a cargo capacity is full")
        }
    }
    
    // define a method to print the current cargo count
    func countCargo(){
        print("The total of current tghe cargo are \(currentCargoCount).")
    }
    
} // cargoship class

// create a subclass
class PirateShip: Ship {
    // define properties
    var maxTreasureCapacity = 1000
    var currentTreasureCount = 0
    var numberOfCannons=12
    
    // define a method to add treasure
    func addTreasure() {
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount += 1
            print("Added a treasure and total treasures are \(currentTreasureCount).")
        }
        else {
            print("We could not add a treasure the capacity is full")
        }
    }
    
    // define a method to print the current treasure count
    func countTreasure(){
        print("The total of current treasures are \(currentTreasureCount).")
    }
    
} // pirateShip class


// Create instances of subclasses
let cruise1 = Crouse(name: "fouji", year: 2020, countryOfOrigin: "canada")
let cargo1 = CargoShip(name: "DHL", year: 2021, countryOfOrigin: "USA")
let pirate1 = PirateShip(name: "Caribbean", year: 2022, countryOfOrigin: "Mexican")

// Add a passenger
cruise1.addPassanger()

// Print the total of passenger
cruise1.currentPassengerCount

// print cruise information

print("cruse name is \(cruise1.name) year \(cruise1.year) from \(cruise1.countryOfOrigin)")

// Add a cargo
cargo1.addCargo()

// Print the total of cargo
cargo1.currentCargoCount

// print cargo information

print("cargo name is \(cargo1.name) year \(cargo1.year) from \(cargo1.countryOfOrigin) and is international \(cargo1.isInternational)")

// Add a treasure
pirate1.addTreasure()

// Print the total of Treasures
pirate1.currentTreasureCount

// print pirot information

print("pirote name is \(pirate1.name) year \(pirate1.year) from \(pirate1.countryOfOrigin)")


