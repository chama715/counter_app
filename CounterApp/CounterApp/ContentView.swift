//
//  ContentView.swift
//  CounterApp
//
//  Created by 高橋直斗 on 2025/05/10.
//

import SwiftUI

struct ContentView: View {
    //ContentViewっていう構造体を定義。Viewプロトコルに準拠する。
    @State private var count = 0
    //状態管理？？アクセス制御？？変数count=0はわかる
    var body: some View {
        //変数bodyに、不明確だけどViewの何かしらを返すよ！という意味？
        VStack {
            //カウントテキスト、青いボタン、赤いボタンを縦に配置する。
            Text("カウント:\(count)")
                .font(.largeTitle)
            //カウントという文字と、変数countを出力。
            //\()は変数とかを入れ込むやつ
            
            Button("+1する") {
                count += 1
            }
            .font(.title)
            .padding()
            .background(Color.blue)
            .foregroundStyle(Color.white)
            .cornerRadius(10)
            //文字を装飾する.~~~ってやつらは、{}の外でいいんだ？！
            
            Button("リセットボタン") {
                count = 0
            }
            .font(.subheadline)
            .background(Color.red)
            .foregroundStyle(Color.black)
            .cornerRadius(10)
            .padding()
        }
        .padding()
        //この余白、消してもあんま変わらない気がするけどどこにどう作用しているんだ？
    }
}
#Preview {
    ContentView()
}
