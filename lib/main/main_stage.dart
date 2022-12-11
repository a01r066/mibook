import '../config/flavour_config.dart';
import 'main.dart';

void main() async {
  Constants.setEnvironment(Environment.stage);
  await initializeApp();
}