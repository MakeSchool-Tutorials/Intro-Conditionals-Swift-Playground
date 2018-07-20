/*:
 ![Make School Banner](./swift_banner.png)
 
 # ブーリアンの論理
 
 時には2つの条件式を同時にチェックしたい場合もあります。’if’文のなかに’if’文を重ねる方法もありますが、これではタイプする量が多いですね！1つもしくは2つの条件が「真」の場合にコードを実行したい場合はなおさらです。
 
 ブーリアン論理の演算子は3つあります。
 
 ## Not `!`
 
 `!` (not, 否定系)は単体の`Bool`に使って「真」と「偽」を入れ替えます。
 
 */
!true
!false
/*:
 
 ## And `&&`
 
 `&&` (and)を使うと2つの`Bool`を1つにまとめることができます。2つのブール値が両方「真」である時のみ「真」、その他はすべて「偽」となります。
 
 */
true && true
true && false
false && true
false && false
/*:
 
 ## Or `||`
 
 `||` (or) も2つの`Bool`を1つにまとめることができます。少なくともどちらかのブール値が「真」であれば「真」、2つのブール値が両方「偽」の時に「偽」となります。
 
 */
true || true
true || false
false || true
false || false
/*:
 
 - 重要: この例では「真」と「偽」の値を直接使いましたが、 `!`, `&&`, `||` はブール変数や、`<`や `==`のような条件付き文でも使えます!
 
 # ロジックの改善
 
 アダプティブ・クルーズ・コントロールの1号はなんとか機能したけれど不安定でした。前の車のスピードに合わせる事ができず、こんな具合でした...
 
 ![](not_stable.gif)
 
 本当はこんな感じにしたいのですが...
 
 ![](stable.gif)
 
 前の車は一定のスピードで走っているのに、私たちの車は急発進と急停止を繰り返しています。安全な車間距離を保ちながら前の車と同じスピードで走るように書き換えましょう。
 
 - callout(チャレンジ): 次の`cruiseControl`機能を直してみましょう ！距離が50より近い場合に`brake(ブレーキ)` 機能を発動し、時速60kmより低く、かつ前の車より遅い場合には `accelerate(アクセル)`機能を発動するように書き換えます。
 
 */
func cruiseControl(currentSpeed: Int, distance: Int, previousDistance: Int) {
    // ここを直してアダプティブ・クルーズ・コントロールを作りましょう
    if distance < 10 {
        brake()
    } else {
        if currentSpeed < 60 {
            accelerate()
        }
    }
}
/*:
 
 - callout(ヒント):  `distance` と `previousDistance`を使ってみよう！
 
 */
//: [Previous](@previous) | [Next](@next)
//:
//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = GameScene.setup(step: .maintainDistance)
(results.scene as! GameScene).updateCar = cruiseControl
PlaygroundPage.current.liveView = results

