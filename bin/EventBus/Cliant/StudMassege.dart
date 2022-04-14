import '../EventBusRoot/evntbus.dart';

class Studmsg extends DataTypeMessage {
  String? stdname;
  String? stdId;
  void SetName(String s) {
    this.stdname = s;
  }

  void SetId(String id) {
    this.stdId = id;
  }

  String get name => this.stdname!;
  String get id => this.stdId!;
}
