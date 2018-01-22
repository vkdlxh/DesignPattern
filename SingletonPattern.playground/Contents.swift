// Singleton PatternはどんなClassのインスタンスがただ一つだけ存在するように強制するパタンです。
// 色々なオブジェクトがこの一つのインスタントを参照します。

import Foundation

class SingletonPattern {
    
    var name: String = ""
    
    // ただshardInstanseを通じてのみインスタンスを生成できる。
    static let shardInstanse = SingletonPattern()
    // プライベートに宣言して外部からインスタンスを生成できなく遮断する。
    private init() { }
}

// 使い方
let instance1 = SingletonPattern.shardInstanse

// プロパティに値を割り当て。
instance1.name = "シングルトン"

// インスタンスをコーピ。
let instance2 = instance1
// コーピされたインスタンスのプロパティに他の値を割り当て。
instance2.name = "リーネム"

// 結果、既存インスタンスのプロパティも変更せれる。
instance1.name
instance2.name

