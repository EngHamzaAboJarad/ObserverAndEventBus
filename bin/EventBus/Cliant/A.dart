import '../EventBusRoot/evntbus.dart';
import 'StudMassege.dart';

class A implements Subscraib {
  void Sendm(DataTypeMessage ms) {
    EvntBus.inst.SendMessagePublish(ms);
  }

  @override
  void ReceivdMessage(DataTypeMessage msg) {
    // TODO: implement ReceivdMessage
    if (msg is Studmsg) {
      Studmsg j = msg;
      print(
          'A Received Message  Abut Student ${j.name} Send From ${j.subscraib}');
    }
  }
}
