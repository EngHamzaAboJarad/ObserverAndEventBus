import 'dart:mirrors';

import '../EventBusRoot/evntbus.dart';
import 'StudMassege.dart';
 class C implements Subscraib {
  @override
  void ReceivdMessage(DataTypeMessage msg) {
    if (msg is Studmsg) {
      Studmsg j = msg;
      var na = reflect(msg);
      print(
          'C Received Message  Abut Student ${j.name} Send From ${j.subscraib}');
    }
  }
}
