import SwiftUI

struct RepositoryListView: View {
    @StateObject var presenter: RepositoryListPresenter

    var body: some View {
        NavigationView {
            List(presenter.repositories) { repo in
                Button(action: {
                    presenter.presentAlert(for: repo)
                }) {
                    VStack(alignment: .leading) {
                        Text(repo.name).font(.headline)
                        Text(repo.description).font(.subheadline)
                    }
                }
            }
            .navigationTitle("Repositories")
            .onAppear { presenter.load() }
            .alert(item: $presenter.alertState) { alertState in
                Alert(title: Text(alertState.title), message: Text(alertState.message), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    RepositoryListBuilder.build()
}
