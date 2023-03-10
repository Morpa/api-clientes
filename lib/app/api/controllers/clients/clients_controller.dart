part of api;

class ClientsController implements Controller {
  @override
  String get route => '/clients';

  @override
  Map<String, Handler> get handlers => {
        'GET': GetClientsHandler(),
      };
}
