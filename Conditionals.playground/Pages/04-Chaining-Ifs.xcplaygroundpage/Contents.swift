/*:
 ![Make School Banner](./swift_banner.png)

# 条件式をつなげる

 独立した条件式を2つ以上評価し、それぞれ異なるコードを実行しなければならない時もあります。さっき学んだ`if then else`文を重ねることもできますが、Swiftには`else if`と短く書くことができます。

 `if then else`文を重ねて使う方法：

     if conditional1 {
        // 条件式1が「真」の場合にコードが実行される
     } else {
        if conditional2 {
            // 条件式1が「偽」かつ条件式2が「真」の場合にコードが実行される
        } else {
            // 条件式1と条件式2が両方「偽」の場合にコードが実行される
        }
     }

 このようにも書けます:

     if conditional1 {
         // 条件式1が「真」の場合にコードが実行される
     } else if conditional2 {
         // 条件式1が「偽」かつ条件式2が「真」の場合にコードが実行される
     } else {
         // 条件式1と条件式2が両方「偽」の場合にコードが実行される
     }

 これで少しだけタイプ量が節約でき、ロジックの目的がより明確になります。

 # パニックブレーキ！

 前の車が急ブレーキをかけたら大変です。私たちのクルーズ・コントロールはパニックブレーキにも対応しなければなりません。ロジックを少しだけ変えてみましょう。今回は2種類のブレーキ`brake(ブレーキ)` と `brakeHard(急ブレーキ)`に対応します。このようなシナリオにおいても衝突を避けられるようなロジックにしなければなりません。さらに、ブレーキ後に法定速度まで戻るのに時間をかけすぎても良くありません。

 - callout(ヒント): 前の車との車間距離が大幅に縮んだ場合のみブレーキを発動しましょう。実際には1km先の車がスピードを落としたからと言ってすぐにブレーキを踏む必要はありません。`previousDistance` と `distance`の差分をみて必要となるブレーキの種類を判断しましょう。走行が法定速度より遅く、かつ車間距離が大きくなっている場合にだけ加速します。

*/
func cruiseControl(currentSpeed: Int, distance: Int, previousDistance: Int) {
     // ここを直してアダプティブ・クルーズ・コントロールを作りましょう

}


//: [Previous](@previous) | [Next](@next)
//:
//: This is special code required to make the mini-game work. You do NOT need to understand it right now.
import PlaygroundSupport
let results = GameScene.setup(step: .maintainUntilClear)
(results.scene as! GameScene).updateCar = cruiseControl
PlaygroundPage.current.liveView = results

