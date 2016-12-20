//
//  NumbersAPIClient.swift
//  RandomNumberFacts
//
//  Created by Flatiron School on 12/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class NumbersAPIClient {

    class func getRandomTrivia (completion:@escaping (String)-> ()){
    
    var storedString = ""
        
    let urlString = "http://numbersapi.com/random/trivia"
        
    let url = URL(string: urlString)
    
    guard let unwrappedURL = url else {print("url did not unwrap"); return}
        
    let request = URLRequest(url: unwrappedURL)
        
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        guard let unwrappedData = data else {print("Data did not unwrap"); return}
        
        let responseString = try? JSONSerialization.jsonObject(with: unwrappedData, options: []) as! String
        
        guard let unwrappedResponseString = responseString else {print("responseString did not unwrap"); return}
        
        storedString = unwrappedResponseString
        
        completion(storedString)
        
        }
        task.resume()
    }
    
    class func getNumberTrivia ( number: Int, completion:@escaping(String)-> ()){
    
        var storedString = ""
        
        let urlString = "http://numbersapi.com/\(number)/trivia"
        
        let url = URL(string: urlString)
        
        guard let unwrappedURL = url else {print("url did not unwrap"); return}
        
        let request = URLRequest(url: unwrappedURL)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let unwrappedData = data else {print("Data did not unwrap"); return}
            
            let responseString = try? JSONSerialization.jsonObject(with: unwrappedData, options: []) as! String
            
            guard let unwrappedResponseString = responseString else {print("response string did not unwrap"); return}
            
            storedString = unwrappedResponseString
            
            completion(storedString)
        }
        task.resume()
        
    }

}
