//
//  TargetType.swift
//  Shayal
//
//  Created by Abdalazem Saleh on 2022-04-03.
//

import Foundation
import Alamofire

class APICall: UIViewController {
    static func APICall<T: Codable>(model: T.Type, url: String, Parms: [String: Any]?, method: HTTPMethod, view: UIView, completion: @escaping ( _ error: Error?, _ success: Bool)->Void){
        Spiner.showSpiner(view: view)
        Alamofire.request(url, method: method, parameters: Parms, headers: nil).responseJSON { (response) in
            guard let data = response.data else { return }
            switch response.result {
            // case failur
            case .failure(let error):
                print(error)
                completion(error, false)
                Spiner.removeSpiner()
            // case success
            case .success(let value):
                print("my Value: - \(value)")
                do{
                    let info = try JSONDecoder().decode(model, from: data)
                    print(info)
                    completion(nil, true)
                    Spiner.removeSpiner()
                } catch {
                    print("error")
                    completion(error, false)
                    Spiner.removeSpiner()
                }
            }
        }
    }
}
