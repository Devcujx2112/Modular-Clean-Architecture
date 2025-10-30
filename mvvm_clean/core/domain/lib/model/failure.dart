import 'package:domain/model/localised_message.dart';

class Failure {
  String code;
  LocalisedMessage message;

  Failure({required this.code, required this.message});
}
