//
//  ContentView.swift
//  TestCornerRedius
//
//  Created by youwei on 2024/8/16.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Group {
                Text("圆角")
                Text("[.cornerRadius]")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(16) // 准备弃用
                Text("[.clipShape]")
                    .foregroundColor(.white) // 准备弃用
                    .padding()
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 16)) // 只有圆角推荐使用
                Text("[.background + RoundedRectangle]")
                    .foregroundColor(.white) // 准备弃用
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.orange)
                    )
            }
            Group {
                Text("边框")
                Text("[.border]")
                    .foregroundColor(.white) // 准备弃用
                    .padding()
                    .background(Color.orange)
                    .border(Color.blue, width: 2.0)
            }
            Group {
                Text("圆角 + 边框")
                Text("[.clipShape + .overlay]")
                    .foregroundColor(.white) // 准备弃用
                    .padding()
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.blue, lineWidth: 2.0)
                    )
                Text("[.background + ZStack .fill .stroke]")
                    .foregroundColor(.white) // 准备弃用
                    .padding()
                    .background(
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.orange)
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.blue, lineWidth: 2.0)
                        }
                    )
                Text("(iOS 17)[.background + RoundedRectangle.fill.stroke]")
                    .foregroundStyle(Color.white) // iOS 17
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.orange)
                            .stroke(Color.blue, lineWidth: 2.0) // iOS 17
                    )
            }
            Spacer()
        }
    }
}

//#Preview {
//    ContentView()
//}

struct Content_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}


