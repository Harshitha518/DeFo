// This struct defines the homepage with the images of the four trees, which leads to the InformationView.
import SwiftUI

struct LearnView: View {
    @Binding var name: String
    @State private var model = Content.all()
    @State var index : Int = 0 
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(spacing: 0) {
                    AppColor.sky.ignoresSafeArea()
                    AppColor.sky.ignoresSafeArea()
                    AppColor.main.ignoresSafeArea()
                }
                VStack{
                    HStack{
                        Image("SadEarth")
                            .resizable()
                            .frame(width:270, height:270)
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                        Text("\(name)! Click on each tree in order from left to right to learn more about deforestation and how it's affecting you and me. Then, take the quiz (in the bottom-right corner) to teach me more about this from what you have learned.")
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal:false, vertical:true)
                            .scaledToFit()
                            .padding()
                            .border(AppColor.main, width: 5)
                            .padding()
                        
                        
                    }
                    
                    
                    
                    HStack {
                        ForEach (model) { content in 
                            TreeView(content: content)
                        }
                        
                        
                        
                    }
                    .containerRelativeFrame(.vertical) { size, axis in size * 0.5
                    }
                }
            }
        }
    }
}
struct TreeView: View {
    let content: Content
    var body: some View {
        return NavigationLink(destination: InformationView(content: content), label: {
            VStack {
                Image("Tree1")
                    .resizable()
                    .frame(width: 200, height: 350)
                Text(content.heading)
            }
        })
    }
  
}
