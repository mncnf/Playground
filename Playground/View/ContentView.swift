import SwiftUI

struct ContentView: View {
    @StateObject var presenter: ContentPresenter
    let router: ContentRouterProtocol

    var body: some View {
        NavigationView {
            List(presenter.contents) { content in
                Button(action: {
                    presenter.presentAlert(title: "アラート", message: "\(content.title) を選択しました")
                    // router.navigateToDetail(content: content) // 画面遷移は必要に応じて
                }) {
                    VStack(alignment: .leading) {
                        Text(content.title).font(.headline)
                        Text(content.body).font(.subheadline)
                    }
                }
            }
            .navigationTitle("Contents")
            .onAppear {
                presenter.load()
            }
            .alert(item: $presenter.alertState) { alertState in
                Alert(title: Text(alertState.title), message: Text(alertState.message), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ContentBuilder.build()
}
