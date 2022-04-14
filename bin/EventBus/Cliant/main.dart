import 'dart:mirrors';

import '../EventBusRoot/evntbus.dart';
import 'A.dart';
import 'B.dart';
import 'C.dart';
import 'StudMassege.dart';

void main(List<String> args) {
  A a = A();
  B b = B();
  C c = C();

  EvntBus.inst.AddChildSubscraib(a);
  EvntBus.inst.AddChildSubscraib(c);
  EvntBus.inst.AddChildSubscraib(b);

  Studmsg temp = Studmsg();
  temp.SetName('Hamza');
  temp.SetId('111');
  temp.SetSubscraib(a);
  a.Sendm(temp);

  /**معرفة اسم الاوبجيكت */
  // var myObj = new A();
  // var instanceMirror = reflect(myObj);
  // var classMirror = instanceMirror.type;
  // print(MirrorSystem.getName(classMirror.simpleName)); // 'MyClass'
}
