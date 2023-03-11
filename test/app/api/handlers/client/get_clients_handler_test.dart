import 'package:api_clientes/app/api/api.dart';
import 'package:api_clientes/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late GetClientsHandler handler;
  late MockGetClientsUseCase mockGetClientsUseCase;

  setUpAll(() {
    mockGetClientsUseCase = MockGetClientsUseCase();
    handler = GetClientsHandler(getClientsUseCase: mockGetClientsUseCase);
  });

  group('GetClientsHandler:', () {
    test('should be have an instance of ResponseHandler', () async {
      when(() => mockGetClientsUseCase.call()).thenAnswer((_) async => []);

      final result = await handler.call();

      expect(result, isA<ResponseHandler>());
    });

    test('should be return a status OK', () async {
      when(() => mockGetClientsUseCase.call()).thenAnswer((_) async => []);

      final result = await handler.call();

      expect(result.status, StatusHandler.ok);
    });

    test('should be return a List of ClientOutputDTO', () async {
      when(() => mockGetClientsUseCase.call()).thenAnswer((_) async =>
          [Client(id: 1, name: 'name', email: 'email', phone: 'phone')]);

      final result = await handler.call();

      expect(result.body, isA<List<ClientOutputDTO>>());
    });

    test(
        'should be return a status internalServerError when an unknown error happens',
        () async {
      when(() => mockGetClientsUseCase.call()).thenThrow(Exception());

      final result = await handler.call();

      expect(result.status, StatusHandler.internalServerError);
    });
  });
}
