//
//  MainView.swift
//  StudentSwift
//
//  Created by ICT IPB (Diva) on 07/11/24.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                BerandaView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Beranda")
                    }
                    .tag(0)

                JadwalView()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Jadwal")
                    }
                    .tag(1)

                ChatView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Chat")
                    }
                    .tag(2)

                ProfilView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profil")
                    }
                    .tag(3)
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()

                    ZStack {
                        Circle()
                            .foregroundColor(Color.blue)
                            .frame(width: 70, height: 70)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                        
                        Button(action: {
                            print("Scan QR tapped!")
                        }) {
                            Image(systemName: "qrcode.viewfinder")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                        }
                    }
                    .offset(y: -30)

                    Spacer()
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


struct BerandaView: View {
    var body: some View {
        Text("Beranda View")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct JadwalView: View {
    var body: some View {
        Text("Jadwal View")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct ChatView: View {
    var body: some View {
        Text("Chat View")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct ProfilView: View {
    var body: some View {
        Text("Profil View")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}
