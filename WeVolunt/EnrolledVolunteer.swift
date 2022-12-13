//
//  EnrolledVolunteer.swift
//  WeVolunt
//
//  Created by roba on 06/12/2022.
//

import SwiftUI

struct EnrolledVolunteer: View {
    var body: some View {
        
        VStack{
            // *** START PAGE CONTENT ***
            
                
          
                // *** START PAGE CONTENT ***
                Text("Helping Affected Families ")
                    .font(.system(size: 24,weight: .bold))
                    .foregroundColor(Color("ourBlue"))
                    .multilineTextAlignment(.leading)
                //.fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom,3)
                
                
                Text("Nafaa  Charity Association")
                    .font(.system(size: 19 , weight: .regular))
                //  .multilineTextAlignment(.leading)
                    .padding(.trailing,60)
                    .foregroundColor(Color("ourOrange"))
                

                Image("Image1")
                    .padding(.bottom,3)
                
                Text("Participate in field visits to help \naffected families and record data")
                    .foregroundColor(Color("ourGrey"))
                    .multilineTextAlignment(.leading)
                    .padding(.top,16)
                    .padding(.leading,40)
                    .padding(.trailing,60)
                    .padding(.bottom,22)
                   // .padding(.horizontal,30)
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "calendar")
                        .font(.system(size: 24))
                        .foregroundColor(Color("ourOrange"))
                      //  .padding(.leading,-75)
                    
                    Text("1 December")
                        .foregroundColor(Color("ourGrey"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading,12)
                    
                }.padding(.bottom,8)
                
                HStack(){
                    //  Spacer()
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 24))
                        .foregroundColor(Color("ourOrange"))
                    //.padding(.leading,-90)
                    
                    
                    Text("Jeddah")
                        .foregroundColor(Color("ourGrey"))
                        .multilineTextAlignment(.leading)
                        .padding(.leading,13)
                 //   Spacer()
                }.padding(.bottom,8)
                
                HStack{
                    Image(systemName: "clock")
                        .font(.system(size: 24))
                        .foregroundColor(Color("ourOrange"))
                      //  .padding(.leading,-90)
                        .padding(.bottom,29)
                    
                    Text("3 Hours")
                        .foregroundColor(Color("ourGrey"))
                        .padding(.bottom,29)
                        .padding(.leading,12)
                    
                }
                
                HStack{
                    Text("Status :")
                        .font(.system(size: 21 , weight: .bold))
                        .foregroundColor(Color("ourBlue"))
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,44)
                    
                    Text(" Accepted ")
                        .font(.system(size: 21 , weight: .medium))
                        .foregroundColor(Color("ourGreen"))
                        .padding(.bottom,44)
                }
            }
            .padding(.trailing, 90)
            //login button
            Button("withdraw"){
            }
            .frame(width:281 , height:41 )
            .foregroundColor(.white)
            .background(Color("ourOrange"))
            .cornerRadius(8)
            .fontWeight(.semibold)
            .padding(.bottom,57)
        }
    }
}

struct EnrolledVolunteer_Previews: PreviewProvider {
    static var previews: some View {
        EnrolledVolunteer()
    }
}
