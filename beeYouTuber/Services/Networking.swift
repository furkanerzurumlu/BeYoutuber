//
//  Networking.swift
//  beeYouTuber
//
//  Created by Furkan Erzurumlu on 4.03.2022.
//
import UIKit
import Alamofire

class Networking{

    static let upComing = "https://apps.furkansandal.com/youtuber_app_v1/show_json_ercument.php"

    func getUpcoming( completion: @escaping (Lessons?)->()){
        let request = AF.request(Networking.upComing)
            .validate()
            request.responseDecodable(of: Lessons.self) {[weak self ] (response) in
            guard let lessons = response.value else{
                completion(nil)
                return
            }
            completion(lessons)
        }
    }
}

