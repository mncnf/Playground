import Foundation
import SwiftUI

final class ContentBuilder {
    static func build() -> some View {
        let useCase = ContentUseCase()
        let presenter = ContentPresenter(useCase: useCase)
        let router = ContentRouter()
        return ContentView(presenter: presenter, router: router)
    }
}
