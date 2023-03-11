import 'package:api_clientes/app/data/data.dart';
import 'package:api_clientes/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../mock.dart';

void main() {
  late MockGetClientsGateway mockGetClientsGateway;
  late GetClientsService service;

  setUpAll(() {
    mockGetClientsGateway = MockGetClientsGateway();
    service = GetClientsService(getClientsGateway: mockGetClientsGateway);
  });

  group('GetClientsService:', () {
    test('should be return a Client list', () async {
      when(() => mockGetClientsGateway.call()).thenAnswer(
        (_) async => [clientMock],
      );

      final result = await service.call();

      expect(result, isA<List<Client>>());
    });
  });
}
