import SwiftUI

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let coverImage: String
    let progress: Double = 0
}

struct LibraryView: View {
    @State private var searchText = ""
    
    let books: [Book] = [
        Book(title: "Meditations", author: "Marcus Aurelius", coverImage: "meditations"),
        Book(title: "Man's Search For Meaning", author: "Viktor Frankl", coverImage: "mansSearchForMeaning"),
        Book(title: "Fear and Loathing in Las Vegas", author: "Hunter S. Thompson", coverImage: "fearAndLoathing"),
        Book(title: "The Hobbit", author: "J.R. Tolkien", coverImage: "theHobbit"),
        Book(title: "The Stranger", author: "Albert Camus", coverImage: "theStrangerCamus"),
        Book(title: "Women", author: "Charles Bukowski", coverImage: "women")
    ]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Library")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .bold()
                    .foregroundColor(Constants.white)
                    .padding([.leading, .trailing, .top], 20)
                
                searchBar
                    .padding([.horizontal], 20)
                
                listsButton
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(books) { book in
                        BookView(book: book)
                    }
                }
                .background(Constants.green1)
                .clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 20
                    )
                )
            }
        }
        .background(Constants.green2)
        .overlay(
            Button(action: { print("Add book pressed") }) {
                HStack{
                    Text("New")
                    Image(systemName: "plus")
                }
            }
            .foregroundColor(.white)
            .font(.system(size: 12, weight: .bold, design: .rounded))
            .padding()
            .background(Color(Constants.green2))
            .shadow(radius: 1)
            .cornerRadius(20)
            .padding(),
            alignment: .bottomTrailing
            
        )
    }
    
    private var searchBar: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $searchText)
                .font(.system(size: 16, weight: .semibold, design: .rounded))

            if !searchText.isEmpty {
                Button(action: { searchText = "" }) {
                    Image(systemName: "xmark.circle.fill")
                }
            }
        }
        .padding(7.5)
        .background(Constants.white)
        .cornerRadius(10)
        .foregroundColor(Constants.green3)
    }
    
    private var listsButton: some View {
        Button(action: { print("Lists button pressed") }) {
            HStack {
                Image(systemName: "list.bullet")
                Text("Lists")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                Spacer()
                Image(systemName: "chevron.forward")
            }
            .foregroundColor(Constants.white)
            .padding()
            .cornerRadius(10)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white.opacity(0.2)),
                alignment: .bottom
            )
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white.opacity(0.2)),
                alignment: .top
            )
        }
    }
}

struct BookView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Image(book.coverImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            Text(book.title)
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .lineLimit(1)
                .foregroundColor(Constants.green4)
        }
        .padding()
    }
}

#Preview {
    LibraryView()
}
