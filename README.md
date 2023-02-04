# fortune_client
Fortune app

## アプリの起動方法

### debug-debug
`flutter run --debug`

### prod-debug
`flutter run --debug --flavor prod`

## 多言語対応について
assets/l10n/ja-JP.jsonに定義

## 画像について
assets/imagesに格納

## その他

### 

1. freezedコードを生成
`flutter pub run build_runner build --delete-conflicting-outputs`
`flutter pub run build_runner watch --delete-conflicting-outputs`

2. Firebase CLI
`dart pub global activate flutterfire_cli`

3. l10nファイル生成
`flutter pub run easy_localization:generate -S assets/l10n -f keys -O lib/l10n -o locale_keys.g.dart`


### リリースファイル生成

1. IOS
`flutter build ipa --release`   

2. Android
`flutter build apk --release`

