import 'package:retrofit/retrofit.dart';

const authorizedRequest = Headers({'api-key': 'api-key-value'});
const authorization = Header('Authorization');

const authenticatedRequest = Extra({
  'append-token': true,
});
