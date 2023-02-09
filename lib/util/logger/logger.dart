import 'package:logger/logger.dart';
import 'dart:developer' as developer;

var logger = Logger(
  printer: PrefixPrinter(PrettyPrinter(colors: true)),
  output: ConsoleOutput(),
);

class PrefixPrinter extends LogPrinter {
  PrefixPrinter(this._realPrinter,
      {debug, verbose, wtf, info, warning, error, nothing})
      : super() {
    _prefixMap = {
      Level.debug: debug ?? '  DEBUG ',
      Level.verbose: verbose ?? 'VERBOSE ',
      Level.wtf: wtf ?? '    WTF ',
      Level.info: info ?? '   INFO ',
      Level.warning: warning ?? 'WARNING ',
      Level.error: error ?? '  ERROR ',
      Level.nothing: nothing ?? 'NOTHING',
    };
  }

  final LogPrinter _realPrinter;
  Map<Level, String>? _prefixMap;

  @override
  List<String> log(LogEvent event) {
    return _realPrinter
        .log(event)
        .map((s) => '${_prefixMap?[event.level]}$s')
        .toList();
  }
}

/// [developer.log(message)]
/// ANSIエスケープコードをエンコードするために必須
class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(developer.log);
  }
}
