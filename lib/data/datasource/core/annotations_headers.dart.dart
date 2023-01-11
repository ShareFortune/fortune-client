import 'package:retrofit/retrofit.dart';

const localizedRequest = Extra({'append-language': true});

const authenticatedRequest = Extra({'append-token': true});

const authenticatedLocalizedRequest = Extra({
  'append-token': true,
  'append-language': true,
});
