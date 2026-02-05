//
//  ContentView.swift
//  count
//
//  Created by 岡島結南 on 2025/09/04.
//

import SwiftUI

struct ContentView: View { 
    
    @State var count = 0
    @State var result = ""
    
    var body: some View {
        VStack {
            Text("\(result)")
                .frame(width: 300, height: 100)
                .font(.system(size: 32))
            
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size: 48))
                .foregroundStyle(count > 0 ? .red :count < 0 ? .blue :.black)
            HStack {
                Button{
                    count = count + 1
                    
                    if count < 10 && count >= 1 {
                        result = "プラスの優勢！"
                    }else if count > 0 && count <= 10 {
                        result = "プラスの勝ち！"
                    }else if count <= -1 && count > -10{
                        result = "マイナスの優勢！"
                    }else if count < 0 && count <= -10 {
                        result = "マイナスの勝ち！"
                    }else {
                        result = ""
                    }
                    
                }label: {
                    Text("+")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(Color.red)
                }
                Button{
                    count = count - 1
                    if count < 10 && count >= 1 {
                        result = "プラスの優勢！"
                    }else if count > 0 && count <= 10 {
                        result = "プラスの勝ち！"
                    }else if count <= -1 && count > -10{
                        result = "マイナスの優勢！"
                    }else if count < 0 && count <= -10 {
                        result = "マイナスの勝ち！"
                    }else {
                        result = ""
                    }
                    
                }label: {
                    Text("-")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(Color.blue)
                }
                
            }
            .padding()
        }

    }
}

#Preview {
    ContentView()
}
