//
//  ViewController.swift
//  mapAppLive
//
//  Created by Eriko Ichinohe on 2021/06/15.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 中心となる地図座標のオブジェクトを作成（バンタカフェ）
        let coodinate = CLLocationCoordinate2DMake(26.41771, 127.714004)
        
        //　地図の縮尺を設定
        let spanForMap = MKCoordinateSpan(latitudeDelta: 0.1,longitudeDelta: 0.1)
        
        // 範囲オブジェクトを作成
        let region = MKCoordinateRegion(center: coodinate, span: spanForMap)
        
        
        // MapViewに範囲オブジェクトを設定
        myMap.setRegion(region, animated: true)
        
        // バンタカフェのあるところに、ピンを立てる
        //ピンオブジェクトを作成
        let Pin1 = MKPointAnnotation()
    
        // ピンの座標を指定
        Pin1.coordinate = coodinate
        
        // タイトル、サブタイトルを設定
        let title1 = "バンタカフェ"
        let subtitle1 = "お気に入りの星のやのカフェ"
        
        Pin1.title = title1
        Pin1.subtitle = subtitle1
        
        // Mapにピンを追加
        myMap.addAnnotation(Pin1)
        
        
        //ピンオブジェクトを作成
        let Pin2 = MKPointAnnotation()
    
        // ピンの座標を指定
        Pin2.coordinate = CLLocationCoordinate2DMake(26.441058, 127.713731)
        
        // タイトル、サブタイトルを設定
        let title2 = "残波岬"
        let subtitle2 = "焼酎の名前に使われているよ"
        
        Pin2.title = title2
        Pin2.subtitle = subtitle2
        
        // Mapにピンを追加
        myMap.addAnnotation(Pin2)
    
    }


}

