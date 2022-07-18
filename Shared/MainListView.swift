//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by Kwaneung Kim on 2022/07/19.
//

import SwiftUI

struct MainListView: View {
    //SwiftUIMemoApp에서 MemoStore를 공유 데이터 등록
    //뷰가 생성되는 시점에 store속성과 동일한 타입을 가진 인스턴스로 자동 초기화
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)
                    
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
