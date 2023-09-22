//
//  Presenter.swift
//  MVPSwift
//
//  Created by Eman Khaled on 22/09/2023.
//

import Foundation
class Presenter {
    
    var view : HomeProtocol!
    func attachView(view: HomeProtocol){
        self.view = view
        //view = vc
    }
    //P -> M
    func getItems(){
        NetworkService.fetchResult {res in
            //vc-> render
            //keda ana ka presenter b3d ma gebt el data mn el model hadeha l view keda el p->V
            self.view.renderView(result: res)
        }
    }
}
