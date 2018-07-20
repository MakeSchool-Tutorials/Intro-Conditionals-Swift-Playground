/*:
 ![Make School Banner](./swift_banner.png)
 # 条件式
 
 ここではブーリアンと呼ばれるデータ型と条件式について学びましょう。ブーリアンとは「真」と「偽」の2種類の値を使った表現のことです。これを条件式に当てはめることで、実装させるコードを決めることができます。
 
 ブーリアンや条件式について学びながら、アダプティブ・クルーズ・コントロール(ACC)システムのプログラミングをやってみましょう。運転しない皆さんにはピンとこないかもしれせんが、クルーズ・コントロールとは車の走行速度を一定に保ってくれる機能のことです。自動運転も現実味をおびてきた近年では、走行速度の制御だけでなく、自動車に付いているセンサがまわりの物体との距離を測り、衝突のないように自動的にスピードを緩めてくれる便利な機能が付いているのです。
 
 ## ブーリアン
 
 Swiftでは、ブーリアンは`Bool`というキーワードで表します。`Bool`においては`true`と`false`の2つの値を使うことができます。次のブール演算子を使ってブール型の演算式を組み立てることができます。
 
 - `<` ～より小さい
 - `>` ～より大きい
 - `==` ～に等しい
 - `!=` ～に等しくない
 - `<=` ～以下
 - `>=` ～以上
 
 下のデモで実際に見てみましょう!
 
 */
let lessThanExample = 0 < 1
let greaterThanExample = 1 > 0
let equalToExample = 0 == 0
let equalToStringExample = "test" == "test"
let notEqualToExample = "boolean" != "random string"
let lessThanEqualToExample = 0 <= 0
let greaterThanEqualToExample = 1 >= 0
//: - 実験: ブール型の機能を試してみましょう！





/*:
 
 ## ‘if’を使った文
 
 ブール値とif文を組み合わせて、特定の条件に反応するようにプログラミングできます。if文でかかれたコードは、ブール値が’true’のときだけ実行します。
 
 if文は次のような形をとります。
 
    if conditional {
        // ここに挿入するコードは条件が「真」の時だけ実行されます！
    }
 
 いくつか例を見てみましょう。
 
 */
if 0 < 1 {
    print("Zero is less than one")
}

if 0 > 1 {
    // これは絶対に実行しません！Swiftが黄色の三角形で注意してくれていますね。
    print("Zero is greater than one")
}
/*:
 
 ちょっとおかしな例ですが、これで仕組みは理解できるでしょう。if文の中に挿入されたコードは、条件が「真」の時にだけ実行され、条件が「偽」の時には実行されません。
 
 # 簡単なクルーズコントロール
 
 ここで学んだことを使って簡易的なクルーズ・コントロールシステムを開発してみましょう！
 
 ‘cruiseControl’の機能は何秒かに1回、自動的に稼働します。このコードでは、青い車はどこまででも加速します。そして他の車に衝突してしまいます。
 
 - callout(チャレンジ): 次のコードを直してみましょう! 道路の法定速度は時速60km. 60kmまではスピードが出るが、60kmより速くはならないように設定しましょう！
 
 */
func cruiseControl(currentSpeed: Int, distance: Int, previousDistance: Int) {
    if true {
        accelerate()
    }
}
/*:
 
 - callout(ヒント): `accelerate`と言うたびに時速1kmずつ加速します。でも `accelerate`を発動できるのは `cruiseControl` が自動的に稼働した時に1回だけです。
 
    `distance`と `previousDistance` は今は使いません！後のセクションで使います。

 
 */
//: [Next](@next)







//:
//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = GameScene.setup(step: .speedUp)
(results.scene as! GameScene).updateCar = cruiseControl
PlaygroundPage.current.liveView = results
