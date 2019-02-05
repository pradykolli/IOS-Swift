import Cocoa

struct Country: CustomStringConvertible{
    var name:String
    var area:Double
    var population:Int
    var density: Double{
        get{
            if area == 0{
                return -1
            }
            else{
                return Double(population) / area
            }
        }
    }
    var description:String { return "name: \(name), area:\(area), population: \(population)" }
    
    func hasLargePopulation() -> Bool{
        if self.population > 1000000{
            return true
        }
        else{
            return false
        }
    }
    func smallerArea(than:Country) -> Bool{
        if self.area < than.area{
            return true
        }
        else{
            return false
        }
    }
    init(name:String, area:Double, population:Int){
        self.name = name
        self.area = area
        self.population = population
    }
    init(name:String){
        self.init(name: name,area: 0,population: 0)
    }
}
var bah:Country = Country(name: "The Bahamas", area: 5382,  population: 313312)
// print(bah)
var cro:Country = Country(name: "Croatia", area: 21831, population: 4483804)
// print(cro)
var mal:Country = Country(name: "Maldives")
// print(mal)
var atlas:[Country] = [bah, cro, mal]
print("The array of countries are:\n",atlas)

func  meanPopulation(ofcountries listOfCountries:Country... )-> Double{
    var total:Double = 0
    for country in listOfCountries{
        total  += Double(country.population)
    }
    return total / Double(listOfCountries.count)
}

print ("Mean population of the threee listed countries is : ",meanPopulation(ofcountries: atlas[0], atlas[1], Country(name:"Macedonia")) )

let serbia = Country(name:"Serbia", area:29_913, population:7_310_155)
let macedonia = Country(name:"Macedonia")
print("Is macednia smaller than serbia?",macedonia.smallerArea(than:serbia))
print("Does serbia has large population?",serbia.hasLargePopulation())




