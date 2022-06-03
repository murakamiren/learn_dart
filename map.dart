// map
// keyとvalueを紐づけて格納するオブジェクト(javascriptでいう所のオブジェクト)

// 変数宣言
// 型指定は左にkeyとなるもの(大体Stringな気がするけど)、右側にvalueの型を指定する
Map<String, String> frameworksLang = {
  "flutter": "Dart",
  "rails": "Ruby",
  "React": "JavaScript",
};

// 値を取り出す
// php,javascriptの連想配列と同じ感覚
final flutterLang = frameworksLang["flutter"]; // Dartと出力される

// 値を追加する
void addFrameworksLang() {
  frameworksLang["Nuxt"] = "vue";
}

// addAll
// mapとmapを結合
void addAllFrameworksLang() {
  frameworksLang.addAll({
    "Laravel": "php",
    "FastAPI": "Python"
  });
}

// foreach
// javascriptのforeach同様、与えられたmapに対して順番に展開していく
// 第一引数にkey,第二引数にvalueを取る
void frameWorksForEach() {
  frameworksLang.forEach((key, value) {
    print("$keyは$valueのフレームワークです");
  });
}

// valueの型がkeyによって違う場合はdynamicで指定可能
// apiからのデータの受け取りの場合はほとんどがdynamic型を使用すると思う(全部文字列のケースは非常に稀な為)
// dynamic型はその名の通り動的な型宣言が可能になる
final Map<String, dynamic> dynamicMap = {
  "name": "村上",
  "age": 21,
};

main() {
  print(flutterLang);
  addFrameworksLang();
  print(frameworksLang);
  addAllFrameworksLang();
  print(frameworksLang);
  frameWorksForEach();
  print(dynamicMap);
}