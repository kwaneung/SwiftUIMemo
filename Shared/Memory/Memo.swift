//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by Kwaneung Kim on 2022/07/19.
//

import Foundation
import SwiftUI

//Identifiable : 데이터를 리스트에 쉽게 바인딩
//ObservableObject : 뷰 자동 업데이트
class Memo: Identifiable, ObservableObject   {
    let id: UUID //Identifiable이 요구하는 속성
    @Published var content: String //Published 특성은 새로운 값을 저장할 때 마다 바인딩 된 UI가 자동 업데이트
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
        
    }
}
