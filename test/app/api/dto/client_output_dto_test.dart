import 'package:api_clientes/app/api/api.dart';
import 'package:api_clientes/app/domain/domain.dart';
import 'package:test/test.dart';

void main() {
  test('should be have a list of ClientOutputDTO', () async {
    final result = ClientOutputDTO.toCollectionDTO([
      Client(id: 1, name: 'name', email: 'email', phone: 'phone'),
    ]);

    expect(result, isA<List<ClientOutputDTO>>());
  });
}
