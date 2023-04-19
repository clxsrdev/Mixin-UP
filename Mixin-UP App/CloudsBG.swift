import SwiftUI

struct CloudsBG: View{
    var body: some View{
        VStack{
            HStack(alignment: .top){
                Image("cloud1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                
                Image("cloud2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                Image("cloud3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(.trailing, 50)
            }
            HStack{
                Image("cloud4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240)
                    .padding(.trailing, 200)
                
                Image("cloud5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280)
                    .padding(.top, 70)
            }
            .padding(.bottom, 200)
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 20)
    }
}


struct CloudsBG_Previews: PreviewProvider {
    static var previews: some View {
        CloudsBG()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray)
    }
}
