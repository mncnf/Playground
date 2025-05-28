import Foundation

protocol RepositoryListUseCaseProtocol {
    func fetchRepositories() -> [RepositoryEntity]
}

class RepositoryListUseCase: RepositoryListUseCaseProtocol {
    func fetchRepositories() -> [RepositoryEntity] {
        [
            RepositoryEntity(id: UUID(), name: "Repo1", description: "説明1"),
            RepositoryEntity(id: UUID(), name: "Repo2", description: "説明2")
        ]
    }
}
