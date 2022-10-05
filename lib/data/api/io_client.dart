import 'package:socket_io_client/socket_io_client.dart';

import 'package:raizen_smart_squares/core/app_export.dart';

class IoClient {
  final client = io(
    'https://raizen-smart-squares-api.herokuapp.com',
    OptionBuilder()
        .setTransports(['websocket'])
        .enableForceNewConnection() // necessary because otherwise it would reuse old connection
        .disableAutoConnect()
        .build(),
  );

  final AuthenticationManager _authenticationManager;

  IoClient({
    required AuthenticationManager authenticationManager,
  }) : _authenticationManager = authenticationManager;

  void connect() {
    if (_authenticationManager.isAuthenticated) {
      final authenticationToken =
          "Bearer ${_authenticationManager.accessToken}";

      client.auth = {
        "token": authenticationToken,
      };
    }

    if (!client.connected) {
      client.connect();
    }
  }

  void close() {
    client.dispose();
  }
}
