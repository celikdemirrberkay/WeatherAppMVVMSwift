//
//  WebServices.swift
//  Weather App MVVM
//
//  Created by Berkay  on 23.03.2023.
//

import Foundation
import AlamofireImage
import Alamofire

class WebServices : IWebServices {
    
    //MARK: - Downloading all datas
    func downloadDataFromAPI(url : URL , completion : @escaping (Welcome?) -> Void ){
        URLSession.shared.dataTask(with: url) { data, url, error in
            if let error = error {
                completion(nil)
                print(error.localizedDescription)
            }
            guard let data = data else {return}
            let decodedData = try? JSONDecoder().decode(Welcome.self, from: data)
            if let decodedData = decodedData{
                completion(decodedData)
            }
        }.resume()
    }
    
    // MARK: - Downloading image data
    func downloadImage (stringURL : String , completion : @escaping (Image) -> Void){
        AF.request(stringURL).responseImage { response in
            if case .success(let image) = response.result{
                completion(image)
            }
        }
    }

    
    
}

protocol IWebServices {
    
    func downloadDataFromAPI(url : URL , completion : @escaping (Welcome?) -> Void )
    func downloadImage (stringURL : String , completion : @escaping (Image) -> Void)
    
}


