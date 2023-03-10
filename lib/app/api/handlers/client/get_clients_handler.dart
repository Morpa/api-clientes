part of api;

class GetClientsHandler implements Handler {
  @override
  Future<ResponseHandler> call() async {
    return ResponseHandler(
      status: StatusHandler.ok,
      body: <ClientOutputDTO>[],
    );
  }
}
