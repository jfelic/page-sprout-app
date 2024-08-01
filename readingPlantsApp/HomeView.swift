import SwiftUI

//TODO: make background color of app #F2F2F2

struct HomeView: View {
    var body: some View {
        TabView {
            // First tab
            VStack {
                HStack {
                    Text("Home")
                        .font(.system(size: 35))
                        .bold()
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        SwiftUI.Image(systemName: "gearshape")
                    })
                    .foregroundColor(Color.gray)
                    .imageScale(.large)
                }.padding()
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "flame")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding([.bottom, .top], 5)
                        .foregroundStyle(
                                LinearGradient(
                                    gradient: Gradient(colors: [.orange, .red, .yellow]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                            )
                    Text("1")
                    
                    Spacer()
                    
                    Image(systemName: "fitness.timer")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.blue)
                    Text("1:25")
                    
                    Spacer()
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [.orange, .yellow]),
                                startPoint: .bottom,
                                endPoint: .top)
                            )
                    Text("33")
                    
                    Spacer()
                }
                .background(Color.white)
                .cornerRadius(30)
                .shadow(radius: 2.5)
                .padding()
                
                Spacer()
                
                Image("plantPlaceholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.tint)
                    .frame(width: 250, height: 250)
                
//                Spacer()
                
                Button(action: {print("Choose plant pressed")}, label: {
                    Text("Choose Plant")
                        .foregroundColor(.white)
                        .padding()
                        .bold()
                })
                .background(
                    Color.green
                        .cornerRadius(30)
                        .shadow(radius: 2)
                )
                
                Button(action: {print("Choose plant pressed")}, label: {
                    Text("Begin Reading")
                        .foregroundColor(.white)
                        .padding()
                        .bold()
                })
                .background(
                    Color.green
                        .cornerRadius(30)
                        .shadow(radius: 2)
                )
                
                Spacer()
            }
            .tabItem {
                Label("Home", systemImage: "tree.fill")
            }
            
            // Second tab
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
            
            // Third tab
            StoreView()
                .tabItem {
                    Label("Store", systemImage: "cart")
                }
        }
        .accentColor(.green) // Optional: Customize the tab bar color
    }
}

#Preview {
    HomeView()
}
