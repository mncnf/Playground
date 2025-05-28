import Foundation

protocol ContentUseCaseProtocol {
    func fetchContents() -> [ContentEntity]
}

class ContentUseCase: ContentUseCaseProtocol {
    func fetchContents() -> [ContentEntity] {
        // 仮のデータ
        return [
            ContentEntity(id: UUID(), title: "タイトル1", body: "本文1"),
            ContentEntity(id: UUID(), title: "タイトル2", body: "本文2")
        ]
    }
}
