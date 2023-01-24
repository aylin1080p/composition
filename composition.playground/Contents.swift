import UIKit

var greeting = "composition"

// 

class Person{
    
    var name:String?
    var age:Int?
    var adress:Address? // there is a class named Address. It can be used like another data type
    
    init(name:String,age:Int,adress:Address) {
        self.name = name
        self.age = age
        self.adress = adress
    }
    
    
    
    
    
    
}
class Address{
    
    var city:String?
    var country:String?
    
    init(city:String,country:String) { // constructor
        self.city = city // shadowing self.x = x
        self.country = country
    }
    
    
    
}


let address1 = Address(city:"Den Haag", country: "Netherlands")
let personel1 = Person(name: "Aylin", age: 28, adress: address1)

    
print(personel1.name!)
print(personel1.adress!.country!)



//*****************************************************************

class Categories{
    
    var categoryId:Int?
    var cetegoryName:String?
    
    init(categoryId:Int,categoryName:String) {
        self.categoryId = categoryId
        self.cetegoryName = categoryName
    }
    
    
}

class Directors{
    
    var directorId:Int?
    var directorName:String?
    
    init(directorId:Int,directorName:String) {
        self.directorId = directorId
        self.directorName = directorName
    }
    
    
}

class Movies {
    
    var movieId:Int?
    var movieName:String?
    var movieYear:Date?
    var movieCategory:Categories?
    var movieDirector:Directors?
    
    
    init(movieId:Int, movieName:String, movieYear:Date, movieCategory:Categories, movieDriector:Directors) {
        self.movieId = movieId
        self.movieName = movieName
        self.movieYear = movieYear
        self.movieCategory = movieCategory
        self.movieDirector = movieDriector
    }
    
    
}


var dram = Categories(categoryId: 001, categoryName: "Dram")
var comedy = Categories(categoryId: 002, categoryName: "Comedy")
var fantastic = Categories(categoryId: 003, categoryName: "Fantastic")

var martin = Directors(directorId: 001, directorName: "Martin Scorsese")
var david = Directors(directorId: 002, directorName: "David Lynch")
var steven = Directors(directorId: 003, directorName: "Steven Soderbergh")

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH:mm:ss"
var django = Movies(movieId: 001, movieName: "Django", movieYear: dateFormatter.date(from: "12:16:45") ?? default value!, movieCategory: dram, movieDriector: david)


print(django.movieYear!)
