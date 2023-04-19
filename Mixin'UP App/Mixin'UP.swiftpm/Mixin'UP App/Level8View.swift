import SwiftUI

struct Level8View: View {
    
    @Binding var level8View: Bool
    
    @State var congratsView: Bool = false
    
    @State var collisionDW: Bool = false
    @State var collisionAW: Bool = false
    @State var collisionAD: Bool = false
    @State var collisionCA: Bool = false
    @State var collisionCW: Bool = false
    @State var collisionEP: Bool = false
    @State var collisionEC: Bool = false
    @State var collisionES: Bool = false
    @State var collisionFS: Bool = false
    @State var collisionSH: Bool = false
    @State var collisionSS: Bool = false
    @State var collisionSE: Bool = false
    @State var collisionAE: Bool = false
    
    @State var isTrueCloud: Bool = false
    @State var isTrueStone: Bool = false
    @State var isTruePlant: Bool = false
    @State var isTrueEnergy: Bool = false
    @State var isTrueRain: Bool = false
    @State var isTrueHuman: Bool = false
    @State var isTrueSpace: Bool = false
    @State var isTrueFire: Bool = false
    @State var isTrueVolcano: Bool = false
    @State var isTrueAlien: Bool = false
    @State var isTrueMeteorite: Bool = false
    @State var isTrueStar: Bool = false
    @State var isTrueUFO: Bool = false
    
    @State var startingYCloud: CGFloat = UIScreen.main.bounds.height
    @State var startingXCloud: CGFloat = UIScreen.main.bounds.width
    @State var currentYCloud: CGFloat = 0
    @State var currentXCloud: CGFloat = 0
    
    @State var startingYSpace: CGFloat = UIScreen.main.bounds.height
    @State var startingXSpace: CGFloat = UIScreen.main.bounds.width
    @State var currentYSpace: CGFloat = 0
    @State var currentXSpace: CGFloat = 0
    
    @State var startingYFire: CGFloat = UIScreen.main.bounds.height
    @State var startingXFire: CGFloat = UIScreen.main.bounds.width
    @State var currentYFire: CGFloat = 0
    @State var currentXFire: CGFloat = 0
    
    @State var startingYVolcano: CGFloat = UIScreen.main.bounds.height
    @State var startingXVolcano: CGFloat = UIScreen.main.bounds.width
    @State var currentYVolcano: CGFloat = 0
    @State var currentXVolcano: CGFloat = 0
    
    @State var startingYAlien: CGFloat = UIScreen.main.bounds.height
    @State var startingXAlien: CGFloat = UIScreen.main.bounds.width
    @State var currentYAlien: CGFloat = 0
    @State var currentXAlien: CGFloat = 0
    
    @State var startingYMeteorite: CGFloat = UIScreen.main.bounds.height
    @State var startingXMeteorite: CGFloat = UIScreen.main.bounds.width
    @State var currentYMeteorite: CGFloat = 0
    @State var currentXMeteorite: CGFloat = 0
    
    @State var startingYStar: CGFloat = UIScreen.main.bounds.height
    @State var startingXStar: CGFloat = UIScreen.main.bounds.width
    @State var currentYStar: CGFloat = 0
    @State var currentXStar: CGFloat = 0
    
    @State var startingYUFO: CGFloat = UIScreen.main.bounds.height
    @State var startingXUFO: CGFloat = UIScreen.main.bounds.width
    @State var currentYUFO: CGFloat = 0
    @State var currentXUFO: CGFloat = 0
    
    @State var startingYHuman: CGFloat = UIScreen.main.bounds.height
    @State var startingXHuman: CGFloat = UIScreen.main.bounds.width
    @State var currentYHuman: CGFloat = 0
    @State var currentXHuman: CGFloat = 0
    
    @State var startingYRain: CGFloat = UIScreen.main.bounds.height
    @State var startingXRain: CGFloat = UIScreen.main.bounds.width
    @State var currentYRain: CGFloat = 0
    @State var currentXRain: CGFloat = 0
    
    @State var startingYPlant: CGFloat = UIScreen.main.bounds.height
    @State var startingXPlant: CGFloat = UIScreen.main.bounds.width
    @State var currentYPlant: CGFloat = 0
    @State var currentXPlant: CGFloat = 0
    
    @State var startingYStone: CGFloat = UIScreen.main.bounds.height
    @State var startingXStone: CGFloat = UIScreen.main.bounds.width
    @State var currentYStone: CGFloat = 0
    @State var currentXStone: CGFloat = 0
    
    @State var startingYEnergy: CGFloat = UIScreen.main.bounds.height
    @State var startingXEnergy: CGFloat = UIScreen.main.bounds.width
    @State var currentYEnergy: CGFloat = 0
    @State var currentXEnergy: CGFloat = 0
    
    @State var startingOffsetYA: CGFloat = UIScreen.main.bounds.height * 1.40
    @State var currentDragOffsetYA: CGFloat = 0
    @State var startingOffsetXA: CGFloat = UIScreen.main.bounds.width * 0.75
    @State var currentDragOffsetXA: CGFloat = 0
    
    @State var startingOffsetYW: CGFloat = UIScreen.main.bounds.height * 1.40
    @State var currentDragOffsetYW: CGFloat = 0
    @State var startingOffsetXW: CGFloat = UIScreen.main.bounds.width * 1.0
    @State var currentDragOffsetXW: CGFloat = 0
    
    @State var startingOffsetYD: CGFloat = UIScreen.main.bounds.height * 1.40
    @State var currentDragOffsetYD: CGFloat = 0
    @State var startingOffsetXD: CGFloat = UIScreen.main.bounds.width * 1.26
    @State var currentDragOffsetXD: CGFloat = 0
    
    
    var body: some View {
        ZStack{
            
            VStack (spacing: 40){
                
                HStack {
                    
                    Image("backPurple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .padding(.leading,50)
                        .padding(.top, 50)
                        .onTapGesture {
                            level8View.toggle()
                        }
                    
                    Spacer()
                    
                    VStack{
                        Text("Level 8")
                            .font(.custom("ChalkboardSE-Bold", size: 80))
                            .foregroundColor(.white)
                            .padding(.top, 20)
                            .padding(.trailing, UIScreen.main.bounds.width / 3.5)
                    }
                }
                
                Text("Mix the elements you have bellow and try to achieve the following goal:")
                    .font(.title2 .weight(.bold))
                    .foregroundColor(.white)
                    .padding(.leading, 5)
                    .multilineTextAlignment(.leading)
                
                Text("Get Star")
                    .font(.largeTitle .weight(.bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 70)
                        .fill(Color(UIColor(red: 0.72, green: 0.30, blue: 0.94, alpha: 1.00)))
                        .frame(width: .infinity, height: 600)
                        .padding(.leading, 60)
                        .padding(.trailing, 60)
                    Image("recycling")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                        .position(x: UIScreen.main.bounds.width * 0.82, y: UIScreen.main.bounds.height * 0.07)
                        .onTapGesture {
                            resetAll()
                        }
                    RoundedRectangle(cornerRadius: 70)
                        .stroke(Color.white, lineWidth: 10)
                        .frame(width: .infinity, height: 600)
                        .padding(.leading, 60)
                        .padding(.trailing, 60)
                        .shadow(radius: 10)
                }
                
                HStack {
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(UIColor(red: 0.72, green: 0.30, blue: 0.94, alpha: 1.00)))
                            .frame(width: 150, height: 140)

                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 10)
                            .frame(width: 150, height: 140)
                            .shadow(radius: 10)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(UIColor(red: 0.72, green: 0.30, blue: 0.94, alpha: 1.00)))
                            .frame(width: 150, height: 140)
                            .padding(.leading, 60)
                            .padding(.trailing, 60)

                    
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 10)
                            .frame(width: 150, height: 140)
                            .padding(.leading, 60)
                            .padding(.trailing, 60)
                            .shadow(radius: 10)
                    }
                       
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color(UIColor(red: 0.72, green: 0.30, blue: 0.94, alpha: 1.00)))
                            .frame(width: 150, height: 140)
                        
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 10)
                            .frame(width: 150, height: 140)
                            .shadow(radius: 10)
                    }
                }
                
                Spacer()
            }

            Image("air")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .position(x: startingOffsetXA, y: startingOffsetYA)
                .position(x: currentDragOffsetXA, y: currentDragOffsetYA)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentDragOffsetYA = value.translation.height
                            currentDragOffsetXA = value.translation.width
                            self.checkCollisionAW()
                            self.checkCollisionAD()
                            self.checkCollisionCA()
                        }
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                if(currentDragOffsetXA > -50 && currentDragOffsetXA < 510 && currentDragOffsetYA > -630 && currentDragOffsetYA < -190 ){
                                    
                                    currentDragOffsetXA = currentDragOffsetXA
                                    currentDragOffsetYA = currentDragOffsetYA
                                    
                                }else{
                                    currentDragOffsetXA = 0
                                    currentDragOffsetYA = 0
                                }
                            }
                        })
                )
            
            Image("water")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .position(x: startingOffsetXW, y: startingOffsetYW)
                .position(x: currentDragOffsetXW, y: currentDragOffsetYW)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentDragOffsetYW = value.translation.height
                            currentDragOffsetXW = value.translation.width
                            self.checkCollisionDW()
                            self.checkCollisionAW()
                            self.checkCollisionCW()
                        }
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                if(currentDragOffsetXW > -290 && currentDragOffsetXW < 300 && currentDragOffsetYW > -630 && currentDragOffsetYW < -190 ){
                                    
                                    currentDragOffsetXW = currentDragOffsetXW
                                    currentDragOffsetYW = currentDragOffsetYW
                                    
                                }else{
                                    currentDragOffsetXW = 0
                                    currentDragOffsetYW = 0
                                }
                            }
                        })
                )
            
            Image("dirt")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .position(x: startingOffsetXD, y: startingOffsetYD)
                .position(x: currentDragOffsetXD, y: currentDragOffsetYD)
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                            currentDragOffsetYD = value.translation.height
                            currentDragOffsetXD = value.translation.width
                            self.checkCollisionDW()
                            self.checkCollisionAD()
                            
                        }
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                if(currentDragOffsetXD > -510 && currentDragOffsetXD < 510 && currentDragOffsetYD > -630 && currentDragOffsetYD < -190 ){
                                    
                                    currentDragOffsetXD = currentDragOffsetXD
                                    currentDragOffsetYD = currentDragOffsetYD
                                    
                                }else{
                                    currentDragOffsetXD = 0
                                    currentDragOffsetYD = 0
                                }
                            }
                        })
                )
            
            if isTrueCloud == true{
                withAnimation(.spring()) {
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .position(x: startingXCloud, y: startingYCloud)
                        .position(x: currentXCloud, y: currentYCloud)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentYCloud = value.translation.height
                                    currentXCloud = value.translation.width
                                    self.checkCollisionCA()
                                    self.checkCollisionCW()
                                    self.checkCollisionEC()
                                }
                                .onEnded({ value in
                                    withAnimation(.spring()) {
                                        if(currentXCloud > -280 && currentXCloud < 280 && currentYCloud > -240 && currentYCloud < 260 ){
                                            
                                            currentXCloud = currentXCloud
                                            currentYCloud = currentYCloud
                                            
                                        }else{
                                            currentXCloud = 0
                                            currentYCloud = 0
                                        }
                                    }
                                })
                        )
                }
            }
            if isTrueStone == true{
                withAnimation(.spring()) {
                    Image("stone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .position(x: startingXStone, y: startingYStone)
                        .position(x: currentXStone, y: currentYStone)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentYStone = value.translation.height
                                    currentXStone = value.translation.width
                                    self.checkCollisionSS()
                                    self.checkCollisionES()
                                    self.checkCollisionFS()
                                }
                                .onEnded({ value in
                                    withAnimation(.spring()) {
                                        if(currentXStone > -280 && currentXStone < 280 && currentYStone > -240 && currentYStone < 260 ){
                                            
                                            currentXStone = currentXStone
                                            currentYStone = currentYStone
                                            
                                        }else{
                                            currentXStone = 0
                                            currentYStone = 0
                                        }
                                    }
                                })
                        )
                }
            }
            
            if isTruePlant == true{
                withAnimation(.spring()) {
                    Image("plant")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .position(x: startingXPlant, y: startingYPlant)
                        .position(x: currentXPlant, y: currentYPlant)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentYPlant = value.translation.height
                                    currentXPlant = value.translation.width
                                    self.checkCollisionEP()
                                }
                                .onEnded({ value in
                                    withAnimation(.spring()) {
                                        if(currentXPlant > -280 && currentXPlant < 280 && currentYPlant > -240 && currentYPlant < 260 ){
                                            
                                            currentXPlant = currentXPlant
                                            currentYPlant = currentYPlant
                                            
                                        }else{
                                            currentXPlant = 0
                                            currentYPlant = 0
                                        }
                                    }
                                })
                        )
                }
                
                
            }
            
            if isTrueEnergy == true{
                withAnimation(.spring()) {
                    Image("energy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .position(x: startingXEnergy, y: startingYEnergy)
                        .position(x: currentXEnergy, y: currentYEnergy)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    currentYEnergy = value.translation.height
                                    currentXEnergy = value.translation.width
                                    self.checkCollisionEP()
                                    self.checkCollisionSE()
                                    self.checkCollisionEC()
                                    self.checkCollisionES()
                                    self.checkCollisionAE()
                                }
                                .onEnded({ value in
                                    withAnimation(.spring()) {
                                        if(currentXEnergy > -280 && currentXEnergy < 280 && currentYEnergy > -240 && currentYEnergy < 260 ){
                                            
                                            currentXEnergy = currentXEnergy
                                            currentYEnergy = currentYEnergy
                                            
                                        }else{
                                            currentXEnergy = 0
                                            currentYEnergy = 0
                                        }
                                    }
                                })
                        )
                }
            }
            
            Group{
                
                if isTrueRain == true{
                    withAnimation(.spring()) {
                        Image("rain")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXRain, y: startingYRain)
                            .position(x: currentXRain, y: currentYRain)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYRain = value.translation.height
                                        currentXRain = value.translation.width
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXRain > -280 && currentXRain < 280 && currentYRain > -240 && currentYRain < 260 ){
                                                
                                                currentXRain = currentXRain
                                                currentYRain = currentYRain
                                                
                                            }else{
                                                currentXRain = 0
                                                currentYRain = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueHuman == true{
                    withAnimation(.spring()) {
                        Image("human")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXHuman, y: startingYHuman)
                            .position(x: currentXHuman, y: currentYHuman)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYHuman = value.translation.height
                                        currentXHuman = value.translation.width
                                        self.checkCollisionSH()
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXHuman > -280 && currentXHuman < 280 && currentYHuman > -240 && currentYHuman < 260 ){
                                                
                                                currentXHuman = currentXHuman
                                                currentYHuman = currentYHuman
                                                
                                            }else{
                                                currentXHuman = 0
                                                currentYHuman = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueSpace == true{
                    withAnimation(.spring()) {
                        Image("space")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXSpace, y: startingYSpace)
                            .position(x: currentXSpace, y: currentYSpace)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYSpace = value.translation.height
                                        currentXSpace = value.translation.width
                                        self.checkCollisionSH()
                                        self.checkCollisionSS()
                                        self.checkCollisionSE()
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXSpace > -280 && currentXSpace < 280 && currentYSpace > -240 && currentYSpace < 260 ){
                                                
                                                currentXSpace = currentXSpace
                                                currentYSpace = currentYSpace
                                                
                                            }else{
                                                currentXSpace = 0
                                                currentYSpace = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueFire == true{
                    withAnimation(.spring()) {
                        Image("fire")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXFire, y: startingYFire)
                            .position(x: currentXFire, y: currentYFire)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYFire = value.translation.height
                                        currentXFire = value.translation.width
                                        self.checkCollisionFS()
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXFire > -280 && currentXFire < 280 && currentYFire > -240 && currentYFire < 260 ){
                                                
                                                currentXFire = currentXFire
                                                currentYFire = currentYFire
                                                
                                            }else{
                                                currentXFire = 0
                                                currentYFire = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueVolcano == true{
                    withAnimation(.spring()) {
                        Image("volcano")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXVolcano, y: startingYVolcano)
                            .position(x: currentXVolcano, y: currentYVolcano)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYVolcano = value.translation.height
                                        currentXVolcano = value.translation.width
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXVolcano > -280 && currentXVolcano < 280 && currentYVolcano > -240 && currentYVolcano < 260 ){
                                                
                                                currentXVolcano = currentXVolcano
                                                currentYVolcano = currentYVolcano
                                                
                                            }else{
                                                currentXVolcano = 0
                                                currentYVolcano = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueAlien == true{
                    withAnimation(.spring()) {
                        Image("alien")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXAlien, y: startingYAlien)
                            .position(x: currentXAlien, y: currentYAlien)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYAlien = value.translation.height
                                        currentXAlien = value.translation.width
                                        self.checkCollisionAE()
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXAlien > -280 && currentXAlien < 280 && currentYAlien > -240 && currentYAlien < 260 ){
                                                
                                                currentXAlien = currentXAlien
                                                currentYAlien = currentYAlien
                                                
                                            }else{
                                                currentXAlien = 0
                                                currentYAlien = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueMeteorite == true{
                    withAnimation(.spring()) {
                        Image("meteorite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXMeteorite, y: startingYMeteorite)
                            .position(x: currentXMeteorite, y: currentYMeteorite)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYMeteorite = value.translation.height
                                        currentXMeteorite = value.translation.width
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXMeteorite > -280 && currentXMeteorite < 280 && currentYMeteorite > -240 && currentYMeteorite < 260 ){
                                                
                                                currentXMeteorite = currentXMeteorite
                                                currentYMeteorite = currentYMeteorite
                                                
                                            }else{
                                                currentXMeteorite  = 0
                                                currentYMeteorite = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
                if isTrueStar == true{
                    withAnimation(.spring()) {
                        Image("star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXStar, y: startingYStar)
                            .position(x: currentXStar, y: currentYStar)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYStar = value.translation.height
                                        currentXStar = value.translation.width
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXStar > -280 && currentXStar < 280 && currentYStar > -240 && currentYStar < 260 ){
                                                
                                                currentXStar = currentXStar
                                                currentYStar = currentYStar
                                                
                                            }else{
                                                currentXStar  = 0
                                                currentYStar = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                if isTrueUFO == true{
                    withAnimation(.spring()) {
                        Image("ufo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .position(x: startingXUFO, y: startingYUFO)
                            .position(x: currentXUFO, y: currentYUFO)
                            .gesture(
                                DragGesture()
                                    .onChanged{ value in
                                        currentYUFO = value.translation.height
                                        currentXUFO = value.translation.width
                                    }
                                    .onEnded({ value in
                                        withAnimation(.spring()) {
                                            if(currentXUFO > -280 && currentXUFO < 280 && currentYUFO > -240 && currentYUFO < 260 ){
                                                
                                                currentXUFO = currentXUFO
                                                currentYUFO = currentYUFO
                                                
                                            }else{
                                                currentXUFO  = 0
                                                currentYUFO = 0
                                            }
                                        }
                                    })
                            )
                    }
                }
                
            }
            
            withAnimation (.default){
                CongratsView(level1View: $level8View, level2View: $level8View, level3View: $level8View, level4View: $level8View, level5View: $level8View, level6View: $level8View, level7View: $level8View, level8View: $level8View, level9View: $level8View, finalView: $level8View, congratsView: $congratsView)
                    .offset(y: congratsView ? 0 : UIScreen.main.bounds.height + 500)
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor(red: 0.39, green: 0.24, blue: 0.47, alpha: 1.00)))

    }
    
    func resetAll () {
        self.isTrueUFO = false
        self.isTrueFire = false
        self.isTrueRain = false
        self.isTrueStar = false
        self.isTrueAlien = false
        self.isTrueCloud = false
        self.isTrueHuman = false
        self.isTruePlant = false
        self.isTrueSpace = false
        self.isTrueStone = false
        self.isTrueEnergy = false
        self.isTrueVolcano = false
        self.isTrueMeteorite = false
        self.currentDragOffsetXD = 0
        self.currentDragOffsetYD = 0
        self.currentDragOffsetXA = 0
        self.currentDragOffsetYA = 0
        self.currentDragOffsetYW = 0
        self.currentDragOffsetXW = 0
    }
    
    func checkCollisionAD () {
        if abs(self.currentDragOffsetXD - self.currentDragOffsetXA) < 500 && abs(self.currentDragOffsetXD - self.currentDragOffsetXA) > 370 && abs(self.currentDragOffsetYD - self.currentDragOffsetYA) > 1 && abs(currentDragOffsetYA) > 160 && abs(currentDragOffsetYD) > 160 && abs(self.currentDragOffsetYD - self.currentDragOffsetYA) < 100 {
            
            self.collisionAD = true
            if (self.collisionAD == true) {
                
                self.isTrueStone = true
                withAnimation(.spring()){
                    self.currentDragOffsetXD = 0
                    self.currentDragOffsetXA = 0
                    self.currentDragOffsetYA = 0
                    self.currentDragOffsetYD = 0
                }
                
            }
        } else {
            self.collisionDW = false
        }
    }
    
    func checkCollisionAW () {
        if abs(self.currentDragOffsetXW - self.currentDragOffsetXA) < 300 && abs(self.currentDragOffsetXW - self.currentDragOffsetXA) > 50 && abs(self.currentDragOffsetYW - self.currentDragOffsetYA) > 1 && abs(currentDragOffsetYA) > 160 && abs(currentDragOffsetYW) > 160 && abs(self.currentDragOffsetYW - self.currentDragOffsetYA) < 100 {
            
            self.collisionAW = true
            if (self.collisionAW == true) {
                
                self.isTrueCloud = true
                
                withAnimation {
                    self.currentDragOffsetXA = 0
                    self.currentDragOffsetXW = 0
                    self.currentDragOffsetYA = 0
                    self.currentDragOffsetYW = 0
                }
                
            }
        } else {
            self.collisionAW = false
        }
    }
    
    func checkCollisionDW (){
        if abs(self.currentDragOffsetXW - self.currentDragOffsetXD) < 700 && abs(self.currentDragOffsetXW - self.currentDragOffsetXD) > 50 && abs(self.currentDragOffsetYW - self.currentDragOffsetYD) > 1 && abs(currentDragOffsetYW) > 160 && abs(currentDragOffsetYD) > 160 && abs(self.currentDragOffsetYW - self.currentDragOffsetYD) < 100 {
            
            self.collisionDW = true
            if(self.collisionDW == true){
                self.isTruePlant = true
                withAnimation {
                    self.currentDragOffsetXD = 0
                    self.currentDragOffsetXW = 0
                    self.currentDragOffsetYD = 0
                    self.currentDragOffsetYW = 0
                }
                self.collisionDW = false
            }
        } else {
            self.collisionDW = false
        }
    }
    
    func checkCollisionCA (){
        if(isTrueCloud == true){
            if abs(self.currentDragOffsetXA - self.currentXCloud) < 300 && abs(self.currentDragOffsetXA - self.currentXCloud) > 100 && abs(self.currentDragOffsetYA - self.currentYCloud) > 320 && abs(currentDragOffsetYA) > 160 && abs(self.currentDragOffsetYA - self.currentYCloud) < 500 {
                
                self.collisionCA = true
                if(self.collisionCA == true){
                    self.isTrueEnergy = true
                    withAnimation {
                        isTrueCloud = false
                        self.currentDragOffsetXA = 0
                        self.currentXCloud = 0
                        self.currentYCloud = 0
                        self.currentDragOffsetYA = 0
                    }
                    self.collisionCA = false
                }
            } else {
                self.collisionCA = false
            }
        }
    }
    
    func checkCollisionCW (){
        if(isTrueCloud == true){
            if abs(self.currentDragOffsetXW - self.currentXCloud) < 70 && abs(self.currentDragOffsetXW - self.currentXCloud) > 0 && abs(self.currentDragOffsetYW - self.currentYCloud) > 320 && abs(currentDragOffsetYW) > 160 && abs(self.currentDragOffsetYW - self.currentYCloud) < 500 {
                
                self.collisionCW = true
                if(self.collisionCW == true){
                    self.isTrueRain = true
                    withAnimation {
                        isTrueCloud = false
                        self.currentDragOffsetXW = 0
                        self.currentXCloud = 0
                        self.currentYCloud = 0
                        self.currentDragOffsetYW = 0
                    }
                    self.collisionCW = false
                }
            } else {
                self.collisionCW = false
            }
        }
    }
    
    func checkCollisionEP (){
        if(isTrueEnergy == true && isTruePlant == true){
            if abs(self.currentXPlant - self.currentXEnergy) < 100 && abs(self.currentXPlant - self.currentXEnergy) > 0 && abs(self.currentYPlant - self.currentYEnergy) > 0 && abs(self.currentYPlant - self.currentYEnergy) < 100 {
                
                self.collisionEP = true
                if(self.collisionEP == true){
                    self.isTrueHuman = true
                    withAnimation {
                        isTrueEnergy = false
                        isTruePlant = false
                        self.currentXPlant = 0
                        self.currentXEnergy = 0
                        self.currentYEnergy = 0
                        self.currentYPlant = 0
                    }
                    self.collisionEP = false
                }
            } else {
                self.collisionEP = false
            }
        }
    }
    
    func checkCollisionEC (){
        if(isTrueEnergy == true && isTrueCloud == true){
            if abs(self.currentXCloud - self.currentXEnergy) < 100 && abs(self.currentXCloud - self.currentXEnergy) > 0 && abs(self.currentYCloud - self.currentYEnergy) > 0 && abs(self.currentYCloud - self.currentYEnergy) < 100 {
                
                self.collisionEC = true
                if(self.collisionEC == true){
                    self.isTrueSpace = true
                    withAnimation {
                        isTrueEnergy = false
                        isTrueCloud = false
                        self.currentXCloud = 0
                        self.currentXEnergy = 0
                        self.currentYEnergy = 0
                        self.currentYCloud = 0
                    }
                    self.collisionEC = false
                }
            } else {
                self.collisionEC = false
            }
        }
    }
    
    func checkCollisionES (){
        if(isTrueEnergy == true && isTrueStone == true){
            if abs(self.currentXStone - self.currentXEnergy) < 100 && abs(self.currentXStone - self.currentXEnergy) > 0 && abs(self.currentYStone - self.currentYEnergy) > 0 && abs(self.currentYStone - self.currentYEnergy) < 100 {
                
                self.collisionES = true
                if(self.collisionES == true){
                    self.isTrueFire = true
                    withAnimation {
                        isTrueEnergy = false
                        isTrueStone = false
                        self.currentXStone = 0
                        self.currentXEnergy = 0
                        self.currentYEnergy = 0
                        self.currentYStone = 0
                    }
                    self.collisionES = false
                }
            } else {
                self.collisionES = false
            }
        }
    }
    
    func checkCollisionFS (){
        if(isTrueFire == true && isTrueStone == true){
            if abs(self.currentXStone - self.currentXFire) < 100 && abs(self.currentXStone - self.currentXFire) > 0 && abs(self.currentYStone - self.currentYFire) > 0 && abs(self.currentYStone - self.currentYFire) < 100 {
                
                self.collisionFS = true
                if(self.collisionFS == true){
                    self.isTrueVolcano = true
                    withAnimation {
                        isTrueFire = false
                        isTrueStone = false
                        self.currentXStone = 0
                        self.currentXFire = 0
                        self.currentYFire = 0
                        self.currentYStone = 0
                    }
                    self.collisionFS = false
                }
            } else {
                self.collisionFS = false
            }
        }
    }
    
    func checkCollisionSH (){
        if(isTrueSpace == true && isTrueHuman == true){
            if abs(self.currentXSpace - self.currentXHuman) < 100 && abs(self.currentXSpace - self.currentXHuman) > 0 && abs(self.currentYSpace - self.currentYHuman) > 0 && abs(self.currentYSpace - self.currentYHuman) < 100 {
                
                self.collisionSH = true
                if(self.collisionSH == true){
                    self.isTrueAlien = true
                    withAnimation {
                        isTrueSpace = false
                        isTrueHuman = false
                        self.currentXSpace = 0
                        self.currentXHuman = 0
                        self.currentYHuman = 0
                        self.currentYSpace = 0
                    }
                    self.collisionSH = false
                }
            } else {
                self.collisionSH = false
            }
        }
    }
    
    func checkCollisionSS (){
        if(isTrueSpace == true && isTrueStone == true){
            if abs(self.currentXSpace - self.currentXStone) < 100 && abs(self.currentXSpace - self.currentXStone) > 0 && abs(self.currentYSpace - self.currentYStone) > 0 && abs(self.currentYSpace - self.currentYStone) < 100 {
                
                self.collisionSS = true
                if(self.collisionSS == true){
                    self.isTrueMeteorite = true
                    withAnimation {
                        isTrueSpace = false
                        isTrueStone = false
                        self.currentXSpace = 0
                        self.currentXStone = 0
                        self.currentYStone = 0
                        self.currentYSpace = 0
                    }
                    self.collisionSS = false
                }
            } else {
                self.collisionSS = false
            }
        }
    }
    
    func checkCollisionSE (){
        if(isTrueEnergy == true && isTrueSpace == true){
            if abs(self.currentXSpace - self.currentXEnergy) < 100 && abs(self.currentXSpace - self.currentXEnergy) > 0 && abs(self.currentYSpace - self.currentYEnergy) > 0 && abs(self.currentYSpace - self.currentYEnergy) < 100 {
                
                self.collisionSE = true
                if(self.collisionSE == true){
                    self.isTrueStar = true
                    withAnimation {
                        isTrueEnergy = false
                        isTrueSpace = false
                        self.currentXSpace = 0
                        self.currentXEnergy = 0
                        self.currentYEnergy = 0
                        self.currentYSpace = 0
                    }
                    self.congratsView = true
                    self.collisionSE = false
                }
            } else {
                self.collisionSE = false
            }
        }
    }
    
    func checkCollisionAE (){
        if(isTrueEnergy == true && isTrueAlien == true){
            if abs(self.currentXAlien - self.currentXEnergy) < 100 && abs(self.currentXAlien - self.currentXEnergy) > 0 && abs(self.currentYAlien - self.currentYEnergy) > 0 && abs(self.currentYAlien - self.currentYEnergy) < 100 {
                
                self.collisionAE = true
                if(self.collisionAE == true){
                    self.isTrueUFO = true
                    withAnimation {
                        isTrueEnergy = false
                        isTrueAlien = false
                        self.currentXAlien = 0
                        self.currentXEnergy = 0
                        self.currentYEnergy = 0
                        self.currentYAlien = 0
                    }
                    self.collisionAE = false
                }
            } else {
                self.collisionAE = false
            }
        }
    }

}

struct Level8View_Previews: PreviewProvider {
    static var previews: some View {
        let level8View = State(initialValue: false)
        return Level8View(level8View: level8View.projectedValue)
    }
}
