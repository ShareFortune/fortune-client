import 'logger.dart';

Future<T> logInfo<T>(Future<T> Function() func) async {
  return await func().whenComplete(() {
    logger.i('[${func.toString()}] generate ${T.toString()}');
  });
}
