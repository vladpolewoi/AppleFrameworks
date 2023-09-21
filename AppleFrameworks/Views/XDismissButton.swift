//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Quest76 on 21.09.2023.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingModal: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowingModal = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 45, height: 45)
            }
        }
    }
}

#Preview {
    XDismissButton(isShowingModal: .constant(false))
}
