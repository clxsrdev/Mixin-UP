import SwiftUI

struct ContentView: View {
    
    @State var showLevelsView: Bool = false
    @State var showAboutView: Bool = false
    @State var helpView: Bool = false
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [
                Color(UIColor(red: 0.09, green: 0.49, blue: 0.70, alpha: 1.00)),
                Color(UIColor(red: 0.39, green: 0.90, blue: 0.97, alpha: 1.00)),
            ]),
                startPoint: .top,
                endPoint: .bottom)
            
            VStack{
                CloudsBG()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .scaledToFit()
                    .background(Color.clear)
                Spacer()
            }
            .padding(.top, 60)
            .padding(.leading, 20)
            
            VStack {
                VStack (spacing: 60){
                    ZStack{
                        Rectangle()
                            .frame(width: 450, height: 150)
                            .cornerRadius(50)
                            .foregroundColor(.white)
                            .shadow(radius: 30)
                            .opacity(0.93)
                        Text("Mixin'UP")
                            .font(.custom("ChalkboardSE-Bold", size: 80))
                            .foregroundColor(.init(red: 3/255, green: 61/255, blue: 77/255))
                    }
                    .scaledToFit()
                    .padding(.top, 450)
                    
                    
                    Spacer()
                        .scaledToFit()
                    
                    VStack{
                        
                        HStack (spacing: 40) {
                            Button {
                                showLevelsView.toggle()
                            } label: {
                                Text("Play".uppercased())
                                    .frame(width: 150, height: 50)
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color(UIColor(red: 0.01, green: 0.04, blue: 0.34, alpha: 1.00)))
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            }
                            .padding(.bottom , 350)
                            .scaledToFit()
                            
                            Button {
                                showAboutView.toggle()
                            } label: {
                                Text("About".uppercased())
                                    .frame(width: 150, height: 50)
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color(UIColor(red: 0.01, green: 0.04, blue: 0.34, alpha: 1.00)))
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            }
                            .padding(.bottom , 350)
                            .scaledToFit()
                        }
                        Button {
                            helpView.toggle()
                        } label: {
                            Text("How to play?".uppercased())
                                .frame(width: 350, height: 50)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(UIColor(red: 0.01, green: 0.04, blue: 0.34, alpha: 1.00)))
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }.padding(.top, -330)
                        Spacer()
                    }
                }
                
                Spacer()
                
                Rectangle()
                    .frame(width: .infinity, height: 80)
                    .foregroundColor(Color(UIColor(red: 0.12, green: 0.52, blue: 0.29, alpha: 1.00)))
                    .padding(.bottom, 40)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            AboutGameView(showAboutView: $showAboutView)
                .offset(y: showAboutView ? 0 : UIScreen.main.bounds.height + 400)
                .animation(.default)
            
            LevelsView(showsLevelView: $showLevelsView)
                .offset(x: showLevelsView ? 0 : UIScreen.main.bounds.width + 600)
                .animation(.default)
            
            HelpView(helpView: $helpView)
                .offset(y: helpView ? 0 : UIScreen.main.bounds.height + 600)
                .animation(.default)
        }
        .ignoresSafeArea()
    }
}


