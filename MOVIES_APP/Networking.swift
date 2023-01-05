//
//  Networking.swift
//  MOVIES_APP
//
//  Created by Shrouk Yasser on 18/12/2022.
//

import Foundation
import UIKit
import CloudKit
class Networking {
    static let shared = Networking()
    func Networker() {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=32c6fcb48eb9f8aba840a7e9dbe4188c&language=en-US&page=1")
        let request = URLRequest(url:url!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            print (response,data,error)
            debugPrint(response)
            guard let dataFromRequ = data else{return}
            guard let data =  try? JSONDecoder().decode(, from: dataFromRequ) else {return}
            
            
//            do{
//                var json = try  JSONSerialization.jsonObject(with:data!,options: JSONSerialization.ReadingOptions.allowFragments)as!Array<Dictionary<String,Any>>
//                print(json[0])
//            }catch{
//                print(error)
//            }
            // response handling
        }.resume()
        //        let task = URLSession.shared.data(from:  request) {data , response, error in
        //            print(data as Any)
        //            print("IT IS DONE RIGHT!")
        //            do{
        //                var json = try  JSONSerialization.jsonObject(with:data!,options: JSONSerialization.ReadingOptions.allowFragments)as!Array<Dictionary<String,Any>>
        //                print(json[0])
        //            }catch{
        //                print(error)
        //            }
        //        }
    }
}
