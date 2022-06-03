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

main() {
  print(flutterLang);
  addFrameworksLang();
  print(frameworksLang);
}