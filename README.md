# Fortune client

Fortune app client repository

# DEMO

<image src="https://user-images.githubusercontent.com/68681355/219053338-888bdbed-b0bb-4ccd-a358-261831ba0a0a.png" width="200" />
<image src="https://user-images.githubusercontent.com/68681355/219054484-82b138e5-007d-4990-a6da-c9697954ac60.png" width="200" />


# Requirement

* flutter 3.7.3 
* dart sdk '>=2.18.2 <3.0.0'

# Usage

### Setup
```zsh
flutter install
flutter clean
flutter pub get

# freezed code
flutter pub run build_runner watch --delete-conflicting-outputs
```
### 実行コマンド
```zsh
flutter run --debug
flutter run --release
```

### Release build
```zsh
# android
flutter build apk

# ios
flutter build ipa
```

# Note

### 多言語対応について
* assets/l10n/ja-JP.jsonに定義
```
flutter pub run easy_localization:generate -S assets/l10n -f keys -O lib/l10n -o locale_keys.g.dart
```

### 画像について
* assets/imagesに格納
```
flutter pub run build_runner build --delete-conflicting-outputs
```

### Firebase CLI 
```
dart pub global activate flutterfire_cli
```
