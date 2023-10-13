import 'package:aqueduct/aqueduct.dart';

class MyController extends Controller {
  @Operation.get()
  Future<Response> getUser() async {
    final user = User()
      ..uid = 1
      ..email = 'user@example.com'
      ..name = 'John Doe'
      ..age = 30
      ..gender = 'Male';
    return Response.ok(user);
  }
}

void main(List<String> arguments) {
  final app = Application<MyAppChannel>()
    ..options.configurationFilePath = 'config.yaml'
    ..entryPoint = runApp;

  runApp(app);
}
