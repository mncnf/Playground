import SwiftUI

struct ContentView: View {
    @StateObject var presenter: ContentPresenter
    let router: ContentRouterProtocol

    var body: some View {
        NavigationView {
            List(presenter.contents) { content in
                Button(action: {
                    // 例: アラートを表示したい場合
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
            .alert(isPresented: $presenter.isAlertPresented) {
                Alert(title: Text(presenter.alertTitle), message: Text(presenter.alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    ContentBuilder.build()
}
