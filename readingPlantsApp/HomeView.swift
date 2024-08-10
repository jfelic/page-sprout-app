import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            mainContent
                .tabItem {
                    Label("Home", systemImage: "tree.fill")
                }
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
            
            StoreView()
                .tabItem {
                    Label("Store", systemImage: "cart")
                }
        }
        .accentColor(Constants.green2)
    }
    
    //MARK: Components
    private var mainContent: some View {
        VStack {
            titleBar
                .font(Font.custom("CaveatBrush-Regular", size: 20))
            statsBar
            Spacer()
            chosenPlant
            Spacer()
            choosePlantButton
            beginReadingButton
            Spacer()
        }
        .padding()
        .background(Color(Constants.green1))
    }
    
    private var titleBar: some View {
        HStack {
            Text("Home")
                .font(.system(size: 35))
                .bold()
                .foregroundColor(Constants.green4)
            Spacer()
            settingsButton
        }
    }
    
    private var settingsButton: some View {
        Button(action: { print("Settings button pressed") }) {
            Image(systemName: "gearshape")
                .foregroundColor(Constants.green4)
                .imageScale(.large)
        }
    }
    
    private var statsBar: some View {
        HStack {
//            Spacer()
            statItem(icon: flameIcon, text: "1")
            statItem(icon: timerIcon, text: "1:25")
            statItem(icon: starIcon, text: "33")
//            Spacer()
        }
        .padding()
        .background(Constants.white)
        .cornerRadius(30)
//        .frame(maxWidth: .infinity)
//        .shadow(radius: 0.1)
    }
    
    private func statItem(icon: some View, text: String) -> some View {
        HStack {
            icon
            Text(text)
        }
    }
    
    private var flameIcon: some View {
        Image(systemName: "flame")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .foregroundColor(Constants.red)
    }
    
    private var timerIcon: some View {
        Image(systemName: "fitness.timer")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .foregroundColor(Constants.clockBlue)
    }
    
    private var starIcon: some View {
        Image(systemName: "star.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .foregroundColor(Constants.yellow)
    }
    
    private var chosenPlant: some View {
        Image("purpleFlower")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.tint)
            .frame(width: 250, height: 250)
    }
    
    private var choosePlantButton: some View {
        actionButton(title: "Choose Plant", action: { print("Choose Plant pressed") })
    }
    
    private var beginReadingButton: some View {
        actionButton(title: "Begin Reading", action: { print("Begin Reading pressed") })
    }
    
    private func actionButton(title: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(Constants.white)
                .padding()
                .bold()
                .frame(maxWidth: .infinity)
                .background(
                    Color(Constants.green2)
                    .cornerRadius(30)
//                        .shadow(radius: 2)
                )
        }
    }
}



#Preview {
    HomeView()
}
