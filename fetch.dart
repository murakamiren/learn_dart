import 'dart:convert';
import 'package:http/http.dart' as http;

// apiからデータ取得

// Future
// 遅延計算を表すオブジェクト。
// 基本的には非同期処理をしたい時に使う
// 公式docs https://api.dart.dev/stable/2.10.4/dart-async/Future-class.html
// 非同期処理を走らす方法はthen関数(Futureクラスの関数らしい)かasync,awaitを利用する方法がある
// 基本async,awaitでよさそう(可読性とかネスト減るし、TypeScript使ってるときも基本async,awaitなので)
Future<void> fetchData() async {
  //apiのurl
  const API_URL = "https://jsonplaceholder.typicode.com/posts?page=1&_limit=5";

  // fetchにはhttpパッケージを使用する
  // http.getの引数はurlも文字列ではなくuri.parseしたものである必要がある
  final res = await http.get(Uri.parse(API_URL));

  // 通信成功
  if (res.statusCode == 200) {
    // bodyでデータ本体を取得
    final String beforeDecodeData = await res.body;
    print(beforeDecodeData);
    // jsonDecodeしただけ
    final decodedData = jsonDecode(beforeDecodeData);
    // このままでも使えない事はない
    // ただ型情報が全くない(実質的にdynamic型になっている)
    print(decodedData[1]["userId"]);
    // trueが返ってくるのでjsonDecodeされた物はListになっている(この場合)
    print(decodedData is List); // true
    // 配列の中身はMap
    print(decodedData[1] is Map); // true
  }
}

main() {
  fetchData();
}
