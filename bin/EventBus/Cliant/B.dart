import '../EventBusRoot/evntbus.dart';
import 'StudMassege.dart';

class B implements Subscraib{
    @override
  void ReceivdMessage(DataTypeMessage msg) {
if (msg is Studmsg) {
      Studmsg j = msg;
      print(
          'B Received Message  Abut Student ${j.name} Send From ${j.subscraib}');
    }  }
}