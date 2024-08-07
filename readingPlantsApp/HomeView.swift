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
        .accentColor(Constants.green)
    }
    
    //MARK: Components
    private var mainContent: some View {
        VStack {
            titleBar
            statsBar
            Spacer()
            chosenPlant
            Spacer()
            choosePlantButton
            beginReadingButton
            Spacer()
        }
        .padding()
        .background(Color(Constants.backgroundGray))
    }
    
    private var titleBar: some View {
        HStack {
            Text("Home")
                .font(.system(size: 35))
                .bold()
            Spacer()
            settingsButton
        }
    }
    
    private var settingsButton: some View {
        Button(action: { print("Settings button pressed") }) {
            Image(systemName: "gearshape")
                .foregroundColor(Constants.green)
                .imageScale(.large)
        }
    }
    
    private var statsBar: some View {
        HStack {
            statItem(icon: flameIcon, text: "1")
            statItem(icon: timerIcon, text: "1:25")
            statItem(icon: starIcon, text: "33")
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
//        .shadow(radius: 2.5)
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
            .frame(width: 30, height: 30)
            .foregroundStyle(
                LinearGradient(
                    colors: [.orange, .red, .yellow],
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
    }
    
    private var timerIcon: some View {
        Image(systemName: "fitness.timer")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .foregroundColor(.blue)
    }
    
    private var starIcon: some View {
        Image(systemName: "star.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 30, height: 30)
            .foregroundStyle(
                LinearGradient(
                    colors: [.orange, .yellow],
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
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
                .foregroundColor(Color(hex: "#81A263"))
                .padding()
                .bold()
                .frame(maxWidth: .infinity)
                .background(
                    Color(.white)
                    .cornerRadius(30)
//                        .shadow(radius: 2)
                )
        }
    }
}



#Preview {
    HomeView()
}
