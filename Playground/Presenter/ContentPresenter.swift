import Foundation

protocol ContentPresenterProtocol: ObservableObject {
    var contents: [ContentEntity] { get }
    var alertState: AlertState? { get }
    func load()
    func presentAlert(title: String, message: String)
}

class ContentPresenter: ContentPresenterProtocol {
    @Published private(set) var contents: [ContentEntity] = []
    @Published var alertState: AlertState? = nil
    private let useCase: ContentUseCaseProtocol

    init(useCase: ContentUseCaseProtocol) {
        self.useCase = useCase
    }

    func load() {
        contents = useCase.fetchContents()
    }

    func presentAlert(title: String, message: String) {
        alertState = AlertState(title: title, message: message)
    }
}
