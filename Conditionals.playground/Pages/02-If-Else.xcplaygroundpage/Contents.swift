/*:
 ![Make School Banner](./swift_banner.png)

 # `If`文と `else` 文

 条件が「偽」の場合に別のコードを実行させることはできるのでしょうか... もちろんロジックを組み変えて、もう一つのif文を使ってコードを書くこともできますが、もっと簡単な方法はないのでしょうか？

 ## `else`を使う

 ‘if’文は’else’文とセットで使うことができます。’if’文の中のコードは条件が「真」の時にだけ実行され、一方の’else’文の中のコードは条件が「偽」の時にだけ実行されるのです。実際にはこのように書きます。

    if conditional {
        // ここのコードは条件が「真」の時にだけ実行される!
    } else {
        // ここのコードは条件が「偽」の時にだけ実行される!
    }

 すごいでしょ？条件付きの文を使って書くようなコードはたくさんあります。こうしてスマートなプログラムができるのです。

 # スマート・クルーズ・コントロール

 さっき書いたクルーズコントロールはどんな状況でも加速してしまうものでした。この例では、車は法定速度を守っていながらも衝突してしまいます。

 - callout(チャレンジ): 次の`cruiseControl` 機能を直してみましょう! 今度は距離が50より近い場合には `brake(ブレーキ)`を、その他の場合は時速60kmに到達するまで `accelerate(加速)` をするように書き換えます。

 */
func cruiseControl(currentSpeed: Int, distance: Int, previousDistance: Int) {
    // ここを直してアダプティブ・クルース・コントロールを作りましょう
    if currentSpeed < 60 {
        accelerate()
    }
}
/*:

 - callout(ヒント): `else`文の中に、もう一つ`if`文を入れ込むのです!

 ## それでもいいけど、あまり安定しませんね...

 完成型はこのようになります:

 ![](not_stable.gif)

 ここまで使ったロジックはまだまだ改善できそうです！前の車は安定したスピードを保って走っているのに、私たちの車は急発進と急停止を激しく繰り返しています。ここでは、さっき作ったアダプティブ・クルーズ・コントロールを安定化し、安全な車間距離を保ちながら前の車と同じスピードで走るようにします。

 */
//: [Previous](@previous) | [Next](@next)
//:
//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = GameScene.setup(step: .maintainDistance)
(results.scene as! GameScene).updateCar = cruiseControl
PlaygroundPage.current.liveView = results

