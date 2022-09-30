import '../const/types.dart';

class Event {
  final EventID id;
  final String name;
  final String explanation;

  Event({
    required this.id,
    required this.name,
    required this.explanation,
  });
}
