import '../config/flavour_config.dart';
import 'main.dart';

void main() async {
  Constants.setEnvironment(Environment.prod);
  await initializeApp();
}