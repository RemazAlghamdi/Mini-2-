//
//  SelectedVolunteer.swift
//  WeVolunt
//
//  Created by roba on 06/12/2022.
//

import SwiftUI

struct SelectedVolunteer: View {
    var body: some View {
        NavigationView(){
            ZStack{
                // *** background should be here ***
            ScrollView(.vertical){
                  //  LazyVStack(spacing: 10)
                    LazyVStack{
                VStack{
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
                  //  ScrollView(.vertical){
                      //  LazyVStack(spacing: 10)
                      //  LazyVStack{
                            Text("Participate in field visits to help \naffected families and record data")
                                .foregroundColor(Color("ourGrey"))
                                .padding(.top,16)
                               // .padding(.leading,40)
                               // .padding(.trailing,60)
                                .padding(.bottom,22)
                               // .padding(.bottom,8)
                            //.padding(.horizontal,30)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Image(systemName: "calendar")
                                .font(.system(size: 24))
                                .foregroundColor(Color("ourOrange"))
                               // .padding(.leading,-75)
                            
                            Text("1 December")
                                .foregroundColor(Color("ourGrey"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading,12)
                        }.padding(.bottom,8)
                        
                        HStack{
                            Image(systemName: "mappin.and.ellipse")
                                .font(.system(size: 24))
                                .foregroundColor(Color("ourOrange"))
                              //  .padding(.leading,-90)
                            
                            Text("Jeddah")
                                .foregroundColor(Color("ourGrey"))
                                .multilineTextAlignment(.leading)
                                .padding(.leading,13)
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
                    }.padding(.trailing, 100)
                            
                            Text ("Requirements:")
                                .font(.system(size: 21, weight: .medium))
                                .foregroundColor(Color("ourBlue"))
                            //.multilineTextAlignment(.leading)
                            //.padding(.leading,23)
                               .padding(.trailing,150)
                                .padding(.leading,25)
                            //.padding(.leading, -30.0)
                                .padding(.bottom,16)
                            
                            Text("1. Required skills : Skills of dealing with special needs . \n2. Academic Qualification : Bachelor. ")
                                .font(.system(size: 18,weight: .regular))
                                .foregroundColor(Color("ourGrey"))
                                .padding(.bottom,24)
                                .padding(.leading,27)
                                
                            
                            
                            
                            
                            //enroll button
                            NavigationLink(destination: LoginPage(), label:{
                                Text("Enroll")
                                    .frame(width:281 , height:41 )
                                    .foregroundColor(.white)
                                    .background(Color("ourBlue"))
                                    .cornerRadius(8)
                                    .fontWeight(.semibold)
                                    .padding(.bottom,53)
                                
                            })
                            
                        }
                        
                    }
                }
            }
            
        }
    }
}

struct SelectedVolunteer_Previews: PreviewProvider {
    static var previews: some View {
        SelectedVolunteer()
    }
}
