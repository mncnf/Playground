import Foundation

protocol RepositoryListInteractorProtocol {
    func getRepositories() -> [RepositoryEntity]
}

class RepositoryListInteractor: RepositoryListInteractorProtocol {
    private let useCase: RepositoryListUseCaseProtocol

    init(useCase: RepositoryListUseCaseProtocol) {
        self.useCase = useCase
    }

    func getRepositories() -> [RepositoryEntity] {
        useCase.fetchRepositories()
    }
}
