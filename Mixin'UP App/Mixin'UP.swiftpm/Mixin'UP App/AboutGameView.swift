import SwiftUI

struct AboutGameView: View {
    
    @Binding var showAboutView: Bool
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .opacity(0.6)
            
            VStack(spacing: 20){
                
                HStack {
                    Image("XMark-Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.top, 290)
                        .padding(.leading, 130)
                        .onTapGesture {
                            showAboutView.toggle()
                        }
                    
                    Spacer()
                    
                }
                
                Text("About the game")
                    .font(.largeTitle .weight(.bold))
                    .foregroundColor(.init(red: 21/255, green: 67/255, blue: 96/255))
                    .padding()
                
                VStack{
                    VStack(spacing: 20){
                        
                        Text("Welcome to Mixin'UP, the most fun and addictive game that will take you on an exciting journey through Earth, sky, and space! In this unique game, you'll have to use your wit and skills to mix elements and create new materials in each level. But be careful, each level is harder than the previous one and the available materials become more complex as you progress.")
                            .font(.title3 .weight(.bold))
                            .foregroundColor(.black)
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .multilineTextAlignment(.center)
                        
                        Text("Get ready for a cosmic mixing adventure! In Mixin'UP, the fun never ends, and there's always something new to discover in each level.")
                            .font(.title3 .weight(.bold))
                            .foregroundColor(.black)
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .multilineTextAlignment(.center)
                        
                        Text("Are you ready to accept the challenge?")
                            .font(.title .weight(.bold))
                            .foregroundColor(.init(red: 17/255, green: 184/255, blue: 218/255))
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .padding(.top, 90)
                            .multilineTextAlignment(.center)
                    }

                }
                
                Spacer()
                
            }
            .frame(width: .infinity, height: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .padding(.top, 260)
                    .padding(.bottom, 280)
                    .padding(.leading, 100)
                    .padding(.trailing, 100)
                    .shadow(radius: 30)
            )
            
        }.ignoresSafeArea()
    }
}

//struct AboutGameView_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutGameView(true)
//    }
//}
