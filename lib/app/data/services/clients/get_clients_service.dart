part of data;

class GetClientsService implements GetClientsUseCase {
  final GetClientsGateway getClientsGateway;

  GetClientsService({
    required this.getClientsGateway,
  });

  @override
  Future<List<Client>> call() async {
    return await getClientsGateway();
  }
}
