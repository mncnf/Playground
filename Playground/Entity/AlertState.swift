import Foundation

struct AlertState: Equatable, Identifiable {
    let id = UUID()
    let title: String
    let message: String
}
