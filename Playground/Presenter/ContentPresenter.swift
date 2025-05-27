import Foundation

protocol ContentPresenterProtocol: ObservableObject {
    var contents: [ContentEntity] { get }
    var isAlertPresented: Bool { get }
    var alertTitle: String { get }
    var alertMessage: String { get }
    func load()
    func presentAlert(title: String, message: String)
}

class ContentPresenter: ContentPresenterProtocol {
    @Published private(set) var contents: [ContentEntity] = []
    @Published var isAlertPresented: Bool = false
    @Published var alertTitle: String = ""
    @Published var alertMessage: String = ""
    private let useCase: ContentUseCaseProtocol

    init(useCase: ContentUseCaseProtocol) {
        self.useCase = useCase
    }

    func load() {
        contents = useCase.fetchContents()
    }

    func presentAlert(title: String, message: String) {
        alertTitle = title
        alertMessage = message
        isAlertPresented = true
    }
}
