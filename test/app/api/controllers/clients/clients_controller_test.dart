import 'package:api_clientes/app/api/api.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late ClientsController controller;
  late MockGetClientsUseCase mockGetClientsUseCase;

  setUpAll(() {
    mockGetClientsUseCase = MockGetClientsUseCase();
    controller = ClientsController(
      getClientsUseCase: mockGetClientsUseCase,
    );
  });

  group('ClientsController:', () {
    test('should be contain a route "/clients"', () async {
      expect(controller.route, '/clients');
    });

    test('should be contain a key "GET" for the handler GetClientsHandler',
        () async {
      expect(controller.handlers['GET'], isA<GetClientsHandler>());
    });
  });
}
