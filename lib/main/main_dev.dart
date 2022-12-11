import 'package:mibook/config/flavour_config.dart';
import 'main.dart';

void main() async {
  Constants.setEnvironment(Environment.dev);
  await initializeApp();
}