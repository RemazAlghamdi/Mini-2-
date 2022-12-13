//
//  volunteerCard.swift
//  WeVolunt
//
//  Created by roba on 08/12/2022.
//

import SwiftUI

//this is the recommendation card
struct recommendVolunteerCard: View {
    @State var showingVolunteerSheet = false
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.gray), lineWidth: 0.5)
                .frame(width:148,height:203)
                .overlay(
                    VStack (alignment: .center){
                        
                        ZStack{
                            Image("volunteerImage")
                                .resizable()
                                .frame(width: 148, height: 96)
                                .shadow(radius: 1)
                            
                            //this is from the costumise shape and view extention
                                .cornerRadius(20, corners: [.topLeft, .topRight])
                            Image("volunteerCompany")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 37, height: 37)
                                .offset(x:-50, y:50)
                                .shadow(radius: 1)
                        }
                                      VStack {
                                
                                //volunteer Title
                                Text("Photographer")
                                    .foregroundColor(Color("volunteerFont"))
                                    .padding(.top)
                                // seperater line
                                Rectangle()
                                    .fill(Color("volunteerFont"))
                                    .frame(height:0.5)
                                
                                          HStack(alignment: .center){
                                    
                                            Image(systemName: "mappin.and.ellipse")
                                                .foregroundColor(Color("ourOrange"))
                                            Text("Jed")
                                                .font(.callout)
                                                .foregroundColor(Color("volunteerFont"))
                                            Image(systemName: "calendar")
                                                .foregroundColor(Color("ourOrange"))
                                            Text("1 dec")
                                                .font(.callout)
                                                .foregroundColor(Color("volunteerFont"))
                                        
                                  
                                           
                                
                                }
                            
                        }
                        Spacer()
                        }
                       
            
                    
                )
            
            
            
                .onTapGesture(perform: {
                    showingVolunteerSheet.toggle()
                    
                })
            
            //the popup window will show
                .fullScreenCover(isPresented: $showingVolunteerSheet){
                    ZStack(alignment: .center){
                        
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(.white), lineWidth: 0.5)
                            .frame(width:313,height:563)
                            .background(.white)
                            .cornerRadius(25)
                            .shadow(radius: 2)
                            .overlay(
                                VStack{
                                    Button {
                                        showingVolunteerSheet.toggle()
                                    } label: {
                                        Image(systemName: "xmark.circle")
                                            .foregroundColor(Color("ourOrange"))
                                    }
                                    .padding(.trailing, 250)
                                    .padding(.top, 20)
                                    
                                    //content of the pop up window
                                    SelectedVolunteer()
                                   
                                    
                                }
                            )
                    }
                    //this will remove the background from full screen
                    .background(BackgroundBlurView())
                    
                }
            
        }
      
        
    }
}

//this is all categories volunteering cards
struct volunteerCard: View {
    @State var showingVolunteerSheet  = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color(.gray), lineWidth: 0.5)
                .frame(width:250,height:94)
                .overlay(
                    HStack {
                        Image("volunteerImage")
                            .resizable()
                            .frame(width: 108, height: 94)
                        
                        //this is from the costumise shape and view extention
                            .cornerRadius(20, corners: [.topLeft, .bottomLeft])
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            //volunteer Title
                            Text("Photographer")
                                .foregroundColor(Color("volunteerFont"))
                            
                            // seperater line
                            Rectangle()
                                .fill(Color("volunteerFont"))
                                .frame(height:0.5)
                            
                            HStack{
                                // orgnization logo
                                Image("volunteerCompany")
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 37, height: 37)
                                VStack{
                                    HStack{
                                        Spacer()
                                        Image(systemName: "mappin.and.ellipse")
                                            .foregroundColor(Color("ourOrange"))
                                        Text("Jed")
                                            .font(.callout)
                                            .foregroundColor(Color("volunteerFont"))
                                        Spacer()
                                    }
                                    HStack{
                                        Spacer()
                                        Image(systemName: "calendar")
                                            .foregroundColor(Color("ourOrange"))
                                        Text("1 dec")
                                            .font(.callout)
                                            .foregroundColor(Color("volunteerFont"))
                                    }
                                    .padding(.trailing, 5.0)
                                }
                            }
                            
                        }
                        Spacer()
                    }
                    
                )
            
            
            
                .onTapGesture(perform: {
                    showingVolunteerSheet.toggle()
                    
                })
            
            //the popup window will show
                .fullScreenCover(isPresented: $showingVolunteerSheet){
                    ZStack(alignment: .center){
                        
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(.white), lineWidth: 0.5)
                            .frame(width:313,height:563)
                            .background(.white)
                            .cornerRadius(25)
                            .shadow(radius: 2)
                            .overlay(
                                VStack{
                                    Button {
                                        showingVolunteerSheet.toggle()
                                    } label: {
                                        Image(systemName: "xmark.circle")
                                            .foregroundColor(Color("ourOrange"))
                                    }
                                    .padding(.trailing, 250)
                                    .padding(.top, 20)
                                    
                                    //content of the pop up window
                                    SelectedVolunteer()
                                    
                                    
                                }
                            )
                    }
                    //this will remove the background from full screen
                    .background(BackgroundBlurView())
                    
                }
            
        }
        
    }
}


//this to make costmizable image corner radius
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


//this to create a costume rounded corners for image
struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


//this will remove the background from the full screen
struct BackgroundBlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        //this will make the view blurry
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        //this will change the corner radius of the popup
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        DispatchQueue.main.async {
            //this will remove the background around the popup
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
}


//this is the preview of the page
struct volunteerCard_Previews: PreviewProvider {
    static var previews: some View {
      //  volunteerCard()
        recommendVolunteerCard()
    }
}
