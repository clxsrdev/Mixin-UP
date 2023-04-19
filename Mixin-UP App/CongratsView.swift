import SwiftUI

struct CongratsView: View {
    
    @Binding var level1View: Bool
    @Binding var level2View: Bool
    @Binding var level3View: Bool
    @Binding var level4View: Bool
    @Binding var level5View: Bool
    @Binding var level6View: Bool
    @Binding var level7View: Bool
    @Binding var level8View: Bool
    @Binding var level9View: Bool
    @Binding var finalView: Bool
    @Binding var congratsView: Bool
    
    var body: some View {
        
        ZStack{
            Color.black
                .opacity(0.6)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: UIScreen.main.bounds.width * 0.85, height: UIScreen.main.bounds.height * 0.4)
                    .foregroundColor(Color.white)
                
                VStack{
                    Image("check")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    Text("Congratulations!!")
                        .font(.largeTitle .weight(.bold))
                        .foregroundColor(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                    Text("You completed this level")
                        .font(.title2 .weight(.semibold))
                        .foregroundColor(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                        .padding(.top,10)
                    Button {
                        congratsView = false
                        level1View = false
                        level2View = false
                        level3View = false
                        level4View = false
                        level5View = false
                        level6View = false
                        level7View = false
                        level8View = false
                        level9View = false
                        finalView = false
                    } label: {
                        Text("Next".uppercased())
                            .font(.title2 .weight(.bold))
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(width: UIScreen.main.bounds.width * 0.13)
                            .background(Color(UIColor(red: 0.04, green: 0.24, blue: 0.46, alpha: 1.00)))
                    }.padding(.top, 30)
                        .cornerRadius(10)

                    
                    
                }.position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.5)
            }

            
        }
            .ignoresSafeArea()
    }
}

//struct CongratsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CongratsView()
//    }
//}
