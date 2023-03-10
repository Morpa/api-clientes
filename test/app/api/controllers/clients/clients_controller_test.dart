import 'package:api_clientes/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  late ClientsController controller;

  setUpAll(() {
    controller = ClientsController();
  });

  group('ClientsController:', () {
    test('should contain a route "/clients"', () async {
      expect(controller.route, '/clients');
    });

    test('should contain a key "GET" for the handler GetClientsHandler',
        () async {
      expect(controller.handlers['GET'], isA<GetClientsHandler>());
    });
  });
}
