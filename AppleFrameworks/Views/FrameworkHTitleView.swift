import SwiftUI

struct FrameworkHTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 120, height: 120)
            Text(framework.name)
                .font(.title)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkHTitleView(framework: MockData.sampleFramework)
}
