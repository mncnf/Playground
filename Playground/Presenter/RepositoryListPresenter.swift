import Foundation

class RepositoryListPresenter: ObservableObject {
    @Published var repositories: [RepositoryEntity] = []
    @Published var alertState: AlertState?

    private let interactor: RepositoryListInteractorProtocol

    init(interactor: RepositoryListInteractorProtocol) {
        self.interactor = interactor
    }

    func load() {
        repositories = interactor.getRepositories()
    }

    func presentAlert(for repo: RepositoryEntity) {
        alertState = AlertState(title: "リポジトリ選択", message: "\(repo.name) を選択しました")
    }
}
