//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Quest76 on 21.09.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                FrameworkHTitleView(framework: framework)
                
                Spacer()
            }
            
            Text(framework.description)
                .font(.body)
                .padding()
            
    
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderless)
            
            Spacer()
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
                .ignoresSafeArea(edges: .bottom)
        }
       
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
