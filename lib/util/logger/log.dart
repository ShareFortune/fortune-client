import 'logger.dart';

Future<T> logInfo<T>(Future<T> Function() func) async {
  return await func().whenComplete(() {
    logger.i('[${func.runtimeType}] generate ${T.runtimeType}');
  });
}
