//
//  SwiftUIMemoApp.swift
//  Shared
//
//  Created by Kwaneung Kim on 2022/07/19.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    @StateObject var store = MemoStore() //메모 저장소를 속성으로 저장
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store) //메인리스트 뷰에 등록하면 이어지는 뷰에서 도일한 객체를 쉽게 사용 가능
            
        }
    }
}
