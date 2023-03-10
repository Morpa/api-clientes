import 'package:api_clientes/app/api/api.dart';
import 'package:test/test.dart';

void main() {
  test('should have an instance of ResponseHandler', () async {
    final handler = GetClientsHandler();
    final result = await handler.call();

    expect(result, isA<ResponseHandler>());
  });

  test('should return a status OK', () async {
    final handler = GetClientsHandler();
    final result = await handler.call();

    expect(result.status, StatusHandler.ok);
  });

  test('should return a List of ClientOutputDTO', () async {
    final handler = GetClientsHandler();
    final result = await handler.call();

    expect(result.body, isA<List<ClientOutputDTO>>());
  });
}
