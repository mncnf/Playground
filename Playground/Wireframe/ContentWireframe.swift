import Foundation
import SwiftUI

protocol ContentWireframeProtocol {
    func makeDetailView(for content: ContentEntity) -> AnyView
}

class ContentWireframe: ContentWireframeProtocol {
    func makeDetailView(for content: ContentEntity) -> AnyView {
        AnyView(
            VStack(alignment: .leading, spacing: 16) {
                Text(content.title).font(.largeTitle)
                Text(content.body).font(.body)
            }
            .padding()
            .navigationTitle("Detail")
        )
    }
}
