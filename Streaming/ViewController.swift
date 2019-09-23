//
//  ViewController.swift
//  Streaming
//
//  Created by Jemesl on 2019/9/14.
//  Copyright © 2019 Jemesl. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    var bg: UIView?
    var subs: [UIView] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testUI()
    }
    
    func test() {
        let v = UIView()
        view.addSubview(v)
        v.backgroundColor = .white
        v.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        UIView().adhere(toSuperView: view).config { view in
            view.backgroundColor = .white
        }.layout { make in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        v.snp.makeConstraints { make in
            make.top.equalTo(0)
        }
    }
    
    func testUI() {
     
        subs = [0,1,2,3,4,4,4,4,4,4,4,4,4].map { count -> UIView in
            let v =  UIView()
            v.backgroundColor = .randomColor
            
            v.height = CGFloat.random(in: 40.0..<80.0)
            v.width = CGFloat.random(in: 40..<80)
            v.layer.borderWidth = 1
            v.layer.cornerRadius = 20
            v.layer.masksToBounds = true
            return v
        }
        
        let bg = UIView()
        self.bg = bg
        bg.backgroundColor = .black
        
        
        view.addSubview(bg)
        bg.snp.makeConstraints { make in
//            make.left.equalTo(0)
//            make.right.equalTo(0)
            
//            make.height.equalTo(500)
//            make.top.equalTo(50)
//            make.width.equalTo(300)
//            make.height.equalTo(200)
            make.center.equalToSuperview()
        }
        
//        bg.jl.streaming(subs: subs).horizontal.isFillHor.isFillVer.hasHeight.hasWidth.hMargin(-15).maskConstraints()
        
//        bg.jl.streaming(subs: subs).vertical.isFillVer.isFillHor.height(80).rightPadding(20).maskConstraints()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bg?.jl.streaming(subs: subs).horizontalMulWithCount(3).hasWidth.isFillVer.isFillHor.height(90).bottomPadding(10).hMargin(3).vMargin(5).padding(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)).maskConstraints()
    }


}

