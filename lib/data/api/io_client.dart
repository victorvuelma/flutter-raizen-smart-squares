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
      print('connecting....');
    }

    client.onConnect((_) {
      print('connected and listening to client!.');
    });

    client.onDisconnect((_) => print('disconnected from client!.'));

    client.onError((data) => print(data));

    client.onConnectError((data) => {print(data)});
  }

  void close() {
    client.dispose();
  }
}
