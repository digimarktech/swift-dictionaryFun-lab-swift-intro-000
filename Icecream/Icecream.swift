//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream:[String: String] = ["Joe": "Peanut Butter and Chocolate", "Tim": "Natural Vanilla", "Sophie": "Mexican Chocolate", "Deniz": "Natural Vanilla", "Tom": "Mexican Chocolate", "Jim": "Natural Vanilla", "Susan": "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor:String) -> [String] {
        
        var names = [String]()
        
        for (name, _) in favoriteFlavorsOfIceCream {
            
            if favoriteFlavorsOfIceCream[name] == flavor {
                
                names.append(name)
            }
        }
        
        return names
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor:String) -> Int {
        
        var names = [String]()
        
        for (name, _) in favoriteFlavorsOfIceCream {
            
            if favoriteFlavorsOfIceCream[name] == flavor {
                
                names.append(name)
            }
        }
        
        return names.count
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person:String) -> String? {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            
            return favoriteFlavorsOfIceCream[person]
            
        } else {
            
            return nil
        }
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor:String, forPerson person:String) -> Bool {
        
        var peopleWhoExist:[String] = [String]()
        
        for (name, _) in favoriteFlavorsOfIceCream {
            
            peopleWhoExist.append(name)
        }
        
        for name in peopleWhoExist {
            
            if name == person {
                
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
                
                return true
                
            }
            
        }
        
        return false
    }
    
    
    
    
    
    // 6.
    
    func remove(person:String) -> Bool {
        
        let result = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        
        if result != nil {
            
            return true
            
        } else {
            
            return false
        }
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person:String, withFlavor flavor:String) -> Bool {
        
        var peopleWhoExist:[String] = [String]()
        
        for (name, _) in favoriteFlavorsOfIceCream {
            
            peopleWhoExist.append(name)
        }
        
        for name in peopleWhoExist {
            
            if name == person {
                
                return false
                
            } else {
                
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
                
                return true
            }
            
            
            
        }
        
        return false
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        
        var sentence = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            
            if sentence.isEmpty {
                
                sentence += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
                
            } else {
                
                sentence += "\n\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            }
            
            
            
        }
        
        return sentence
    }
    
    
    
    
    
    

}
