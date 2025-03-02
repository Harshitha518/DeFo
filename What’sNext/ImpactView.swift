// This struct defines the view which has all the content to teach one how to help decrease deforestation. The TaskCellViews are used here.
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
    var symbol: String
    let message: String
    var showingAlert: Bool
}


struct ImpactView: View {
    var growth: Image {
        switch tasks.filter({$0.isCompleted}).count {
        case 1: return Image("Stage1")
        case 2: return Image("Stage2")
        case 3: return Image("Stage3")
        case 4: return Image("Stage4")
        case 5: return Image("Stage5")
        case 6: return Image("Stage6")
        case 7: return Image("Stage7")
        case 8: return Image("Stage8")
        case 9: return Image("FinalStage")
        default: return Image("Seed")
        }
    }
    @State private var tasks = [Task(name: "Plant a tree", isCompleted: false, symbol: "tree", message: "Planting a tree can help a deforested area grow lush again. It also creates more oxygen combatting the carbon dioxide released by deforestation and can help reduce effects of carbon dioxide.", showingAlert: false), Task(name: "Recycle or use a recycled product", isCompleted: false, symbol: "arrow.3.trianglepath", message: "Recycling products, especially wood products can reduce the amount of trees being cut down. Wood products can be recycled into manifold different products, reducing the virgin trees being cut down", showingAlert: false), Task(name: "Teach someone about deforestation and raise awareness", isCompleted: false, symbol: "bubble", message: "The first step of stopping any problem is realizing that it is a problem. The more people that know about deforestation, the more people will help. It educates people and encourages them to participate in this movement.", showingAlert: false), Task(name: "Decrease your meat consumption", isCompleted: false, symbol: "carrot", message: "Eating less meat decreases the demand for meat. Meats like beef are one of the biggest causes of deforestation. The more meat that is being consumed, the more trees the meat industry cuts down for their animals to roam and eat. Eating plant based foods helps decrease this.", showingAlert: false), Task(name: "Use less paper products", isCompleted: false, symbol: "newspaper", message: "Recently, more and more paper products are starting to be made from recycled products. However, decreasing the use of paper products will still benefit the enviorment in numerous ways, ranging from a decrease intrees being cut down to a decrease in greenhouse gas emissions", showingAlert: false), Task(name: "Burn less firewood", isCompleted: false, symbol: "fireplace", message: "Just in the U.S. it is estimated that there are 17.5 million fireplaces and 10.1 million wood stoves. There is a high demand for wood and lots of trees are being cut down for wood. It is one of the main causes of deforestation.", showingAlert: false), Task(name: "Support responsible companies", isCompleted: false, symbol: "hand.thumbsup", message: "There are big companies that are making the problem of deforestation much worse. Supporting and buying from sustainable and responsible companies decreases these effects and encourages other companies to be responsible as well.", showingAlert: false), Task(name: "Support Indigenous communities", isCompleted: false, symbol: "person.3", message: "It is important to support Indigenous groups, as deforestation is taking away their homes from them. These people have been fighting to protect their ancestral lands for centuaries and we must help them and fight against deforestation.", showingAlert: false), Task(name: "Donate to an organization", isCompleted: false, symbol: "camera.macro", message: "Donating to organizations that work to end deforestation, such as the Rainforest Alliance, the Amazon Conservation, and the National Forest Foundation can help the organization continue protecting forests and continue their reconservation efforts. Even a little help can do a lot!", showingAlert: false)]
    @State private var selected: Bool = false
    @State var showGift: Bool = false
    @State var showSeed: Bool = false
    @State private var giftOpenedText: String =  "Wow! You got a plant seed. To grow it into a big tree, complete the tasks below. Allthough these tasks alone won't put a stop to deforestation, they will certainly help reduce the effects of deforestation! Click on the circle to complete them and watch your seed grow. If you are wondering how these help reduce deforestation, click on the task to learn more about it!"
    var body: some View {
        NavigationStack {
            ZStack{
                AppColor.main.ignoresSafeArea()
                ScrollView(.vertical) {
                    VStack {
                        Text("What's Next?")
                            .font(.system(size: 36, weight: .heavy, design: .rounded))
                            .foregroundStyle(Color.green.secondary)
                            .padding()
                        Text(showSeed ? "\(giftOpenedText)" : "")
                        if self.showGift {
                            Image("Gift")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .padding().modifier(ShakeEffect(position: selected ? -2 : 0))
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                        self.showGift.toggle()
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                        self.showSeed.toggle()
                                    }
                                }
                        } else {
                            Button(action: {
                                self.showGift.toggle()
                                withAnimation(.linear) {
                                    selected.toggle()
                                    
                                }
                            }) {
                                if selected == true {
                                    Text("")
                                } else {
                                     BottomText(str: "Tap here to see your gift")
                                        .padding()
                                }
                            }
                            if self.showSeed {
                                HStack {
                                    VStack {
                                        ForEach($tasks) { $task in
                                            TaskCellView(task: $task)
                                                .padding(.horizontal)
                                        }
                                        Text("Completion Count: \(tasks.filter{$0.isCompleted}.count) / \(tasks.count)")
                                    }
                                    VStack {
                                        Text(growth)
                                            .padding(.horizontal)
                                        if tasks.filter({$0.isCompleted}).count == 9 {
                                            NavigationLink (
                                                destination: EndOfAppView(), 
                                                label: { 
                                                    BottomText(str: "Wow, a tree! Continue!")
                                                        .padding()
                                                })
                                        }
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
        }
    }
}
    struct ShakeEffect: GeometryEffect{
        func effectValue(size: CGSize) -> ProjectionTransform {
            return ProjectionTransform(CGAffineTransform(translationX: -30 * sin(position * 2 * .pi), y: 0))
        }
        
        var position: CGFloat
        var animatableData: CGFloat {
            get { position }
            set { position = newValue}
        }
    }
    
    
    
 
