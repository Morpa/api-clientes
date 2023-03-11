import 'package:api_clientes/app/data/data.dart';
import 'package:api_clientes/app/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockGetClientsUseCase extends Mock implements GetClientsUseCase {}

class MockGetClientsGateway extends Mock implements GetClientsGateway {}

final clientMock = Client(id: 1, name: 'name', email: 'email', phone: 'phone');
