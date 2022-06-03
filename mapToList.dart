// mapからlistに変換する

Map<String, int> usersMap = {
  "テスト太郎": 22,
  "藤江": 20,
  "坂倉": 40,
};


// listを入れるmodelクラス
// 今回の用途的にtypescriptでいうところのtype,interfaceを作っているような感覚に近い
class User {
  String name;
  int age;

  User(this.name, this.age);
}

// mapからlistへの変換
// entriesは挿入順でmapの要素に対する[key,value]を含む"新しい"Iteratorオブジェクトを返す(らしい)
// Iteratorとはイテレーション可能(イテラブル)な構造を持つオブジェクト。
// イテレーションは繰り返すことで、次の要素にアクセスできることを意味する
// 要は順番にアクセスできる配列データを簡単に記述できるようになる
// https://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1345203893
// https://zenn.dev/tris/articles/61c4a9ca398472
// ちょっとだけ理解しかかもしれない
final List<User> usersList = usersMap.entries.map((user) => User(user.key, user.value)).toList();

main() {
  print(usersMap);
  // print(usersList);
  usersList.forEach((user) {
    print("${user.name}は${user.age}歳です");
  });
}

