import Foundation
import SwiftUI

protocol ContentRouterProtocol {
    func navigateToDetail(content: ContentEntity)
    func showAlert(title: String, message: String)
}

class ContentRouter: ContentRouterProtocol {
    func navigateToDetail(content: ContentEntity) {
        // 画面遷移の実装例（実際の遷移はViewでハンドリング）
        print("Navigate to detail: \(content.title)")
    }

    func showAlert(title: String, message: String) {
        // アラート表示の実装例（実際の表示はViewでハンドリング）
        print("Show alert: \(title) - \(message)")
    }
}
