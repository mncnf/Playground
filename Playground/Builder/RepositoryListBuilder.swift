import SwiftUI

enum RepositoryListBuilder {
    static func build() -> some View {
        let useCase = RepositoryListUseCase()
        let interactor = RepositoryListInteractor(useCase: useCase)
        let presenter = RepositoryListPresenter(interactor: interactor)
        return RepositoryListView(presenter: presenter)
    }
}
