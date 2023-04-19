import SwiftUI

struct LevelsView: View {
    
    @Binding var showsLevelView: Bool
    
    @State var level1View: Bool = false
    @State var level2View: Bool = false
    @State var level3View: Bool = false
    @State var level4View: Bool = false
    @State var level5View: Bool = false
    @State var level6View: Bool = false
    @State var level7View: Bool = false
    @State var level8View: Bool = false
    @State var level9View: Bool = false
    
    @State var finalView: Bool = false

    var body: some View {
        ZStack{
            
            ScrollView(.vertical, showsIndicators: false){
                ScrollViewReader { scrollView in
                    ZStack {
                        
                        Image("rocketBG")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.bottom, UIScreen.main.bounds.height + 100)
                            .padding(.trailing, 500)
                        
                        Image("meteor")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                            .padding(.bottom, UIScreen.main.bounds.height - 300)
                            .padding(.leading, 550)
                            
                        Image("saturn")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.bottom, UIScreen.main.bounds.height + 650)
                            .padding(.leading, 400)
                        
                        Image("cloud4")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.bottom, UIScreen.main.bounds.height - 1000)
                            .padding(.trailing, 500)
                        
                        Image("cloud2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.top, UIScreen.main.bounds.height - 300)
                            .padding(.trailing, 500)
                        
                        Image("cloud3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.top, UIScreen.main.bounds.height - 850)
                            .padding(.leading, 400)
                        
                        Image("cloud5")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.top, UIScreen.main.bounds.height - 100)
                            .padding(.leading, 400)
                        
                        Rectangle()
                            .fill(Color(UIColor(red: 0.12, green: 0.52, blue: 0.29, alpha: 1.00)))
                            .frame(maxWidth: .infinity, maxHeight: 100)
                            .padding(.top, UIScreen.main.bounds.height + 1000)
                        
                        Image("trees")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .padding(.top, UIScreen.main.bounds.height + 800)
                            .padding(.leading, 400)
                        
                        VStack {
                            VStack(spacing: 0){
                                
                                HStack {
                                    Image("back-arrow")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70)
                                        .padding(.leading, 160)
                                        .position(x: 0, y: -10)
                                        .onTapGesture {
                                            showsLevelView.toggle()
                                        }
                                    
                                    VStack(spacing: 110) {
                                        ZStack{
                                            Image("redStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("10")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            finalView.toggle()
                                        }
                                        ZStack{
                                            Image("yellowStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                            
                                            Text("9")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level9View.toggle()
                                        }
                                        ZStack{
                                            Image("yellowStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("8")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level8View.toggle()
                                        }
                                        ZStack{
                                            Image("yellowStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                            
                                            Text("7")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level7View.toggle()
                                        }
                                                               
                                                               
                                        ZStack{
                                            Image("blueStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("6")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level6View.toggle()
                                        }
                                        ZStack{
                                            Image("blueStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("5")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level5View.toggle()
                                        }
                                        ZStack{
                                            Image("blueStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("4")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level4View.toggle()
                                        }
                                                               
                                        ZStack{
                                            Image("greenStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                                   
                                            Text("3")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level3View.toggle()
                                        }
                                        ZStack{
                                            Image("greenStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                
                                            Text("2")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level2View.toggle()
                                        }
                                        ZStack{
                                            Image("greenStage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100)
                                                            
                                            Text("1")
                                                .font(.largeTitle .weight(.bold))
                                                .foregroundColor(.black)
                                        }.onTapGesture {
                                            level1View.toggle()
                                        }
                                    }.padding(.trailing, UIScreen.main.bounds.width / 2.2)
                                }
                            }.padding(.bottom, 130)
                                .padding(.top, 130)
                        }
                    }
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [
                                Color(UIColor(red:0.24, green: 0.14, blue:  0.50, alpha: 1.00)),
                                Color(UIColor(red:0.25, green: 0.04, blue: 0.84, alpha: 1.00)),
                                Color(UIColor(red: 0.09, green: 0.49, blue: 0.70, alpha: 1.00)),
                                Color(UIColor(red: 0.39, green: 0.90, blue: 0.97, alpha: 1.00)),
                            ]),
                                       startPoint: .top,
                                       endPoint: .bottom)
                            )
                        .ignoresSafeArea()
                }
                .background(
                    LinearGradient(gradient: Gradient(colors: [
                        Color(UIColor(red:0.24, green: 0.14, blue: 0.50, alpha: 1.00)),
                        Color(UIColor(red: 0.39, green: 0.90, blue: 0.97, alpha: 1.00)),
                    ]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
         
            Level1View(level1View: $level1View)
                .offset(x: level1View ? 0 : UIScreen.main.bounds.width + 300)
            
            Level2View(level2View: $level2View)
                .offset(x: level2View ? 0 : UIScreen.main.bounds.width + 300)
            
            Level3View(level3View: $level3View)
                .offset(x: level3View ? 0 : UIScreen.main.bounds.width + 300)
            
            Level4View(level4View: $level4View)
                .offset(x: level4View ? 0 : UIScreen.main.bounds.width + 300)
            
            Level5View(level5View: $level5View)
                .offset(x: level5View ? 0 : UIScreen.main.bounds.width + 300)
            
            Level6View(level6View: $level6View)
                .offset(x: level6View ? 0 : UIScreen.main.bounds.width + 300)
            
            Group{
                
                Level7View(level7View: $level7View)
                    .offset(x: level7View ? 0 : UIScreen.main.bounds.width + 300)
                
                Level8View(level8View: $level8View)
                    .offset(x: level8View ? 0 : UIScreen.main.bounds.width + 300)
                
                Level9View(level9View: $level9View)
                    .offset(x: level9View ? 0 : UIScreen.main.bounds.width + 300)
                
                FinalLevelView(finalView: $finalView)
                    .offset(x: finalView ? 0 : UIScreen.main.bounds.width + 300)
            }
            
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.black)
        
    }
}

struct LevelsView_Previews: PreviewProvider {
    static var previews: some View {
        let showsLevelsView = State(initialValue: false)
        
        return LevelsView(showsLevelView: showsLevelsView.projectedValue)
    }
}
