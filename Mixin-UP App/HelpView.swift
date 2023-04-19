import SwiftUI

struct HelpView: View {
    
    @Binding var helpView: Bool
    
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
                        .padding(.top, 200)
                        .padding(.leading, 130)
                        .onTapGesture {
                            helpView.toggle()
                        }
                    
                    Spacer()
                    
                }
                
                Text("Combinations")
                    .font(.largeTitle .weight(.bold))
                    .foregroundColor(.init(red: 21/255, green: 67/255, blue: 96/255))
                    .padding()
                
                VStack{
                    VStack(spacing: 5){
                        HStack{
                            Text("Air + Water = Cloud")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("cloud")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Air + Dirt = Stone")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("stone")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Water + Dirt = Plant")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("plant")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                        Text("Cloud + Air = Energy")
                            .font(.title2 .weight(.bold))
                            .foregroundColor(.black)
                            .padding(.leading, 150)
                            .padding(.trailing, 150)
                            .multilineTextAlignment(.center)
                            Image("energy")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Cloud + Water = Rain")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("rain")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Energy + Plant = Human")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("human")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Energy + Cloud = Space")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("space")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Energy + Stone = Fire")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("fire")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        HStack{
                            Text("Fire + Stone = Volcano")
                                .font(.title2 .weight(.bold))
                                .foregroundColor(.black)
                                .padding(.leading, 150)
                                .padding(.trailing, 150)
                                .multilineTextAlignment(.center)
                            Image("volcano")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                        }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        Group {
                            HStack{
                                Text("Space + Human = Alien")
                                    .font(.title2 .weight(.bold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 150)
                                    .padding(.trailing, 150)
                                    .multilineTextAlignment(.center)
                                Image("alien")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                            }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                            HStack{
                                Text("Space + Stone = Meteorite")
                                    .font(.title2 .weight(.bold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 150)
                                    .padding(.trailing, 150)
                                    .multilineTextAlignment(.center)
                                Image("meteorite")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                            }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                            HStack{
                                Text("Space + Energy = Star")
                                    .font(.title2 .weight(.bold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 150)
                                    .padding(.trailing, 150)
                                    .multilineTextAlignment(.center)
                                Image("star")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                            }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                            HStack{
                                Text("Alien + Energy = UFO")
                                    .font(.title2 .weight(.bold))
                                    .foregroundColor(.black)
                                    .padding(.leading, 150)
                                    .padding(.trailing, 150)
                                    .multilineTextAlignment(.center)
                                Image("ufo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40)
                            }.padding(.trailing, UIScreen.main.bounds.width * 0.05)
                        }
                    }
                }
                
                Spacer()
                
            }
            .frame(width: .infinity, height: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .padding(.top, 150)
                    .padding(.bottom, 150)
                    .padding(.leading, 80)
                    .padding(.trailing, 80)
                    .shadow(radius: 30)
            )
            
        }.ignoresSafeArea()    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        let helpView = State(initialValue: false)
        return HelpView(helpView: helpView.projectedValue)
    }
}

