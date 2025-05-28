import Foundation
import SwiftUI

protocol RepositoryListRouterProtocol {
    func navigateToDetail(from view: UIViewController, repository: RepositoryEntity)
}

class RepositoryListRouter: RepositoryListRouterProtocol {
    func navigateToDetail(from view: UIViewController, repository: RepositoryEntity) {
        // ここで詳細画面への遷移処理を実装
        // 例: let detailVC = RepositoryDetailBuilder.build(with: repository)
        // view.navigationController?.pushViewController(detailVC, animated: true)
    }
}
