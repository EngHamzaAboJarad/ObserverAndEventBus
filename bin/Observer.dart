class A {
  List<Alisener> obs = [];

  void AddObject(Alisener alisener) {
    if (!obs.contains(alisener)) {
      obs.add(alisener);
    }
  }


  void SendDataAllIns(text) {
    for (Alisener f in obs) {
      f.senDate(text);
    }
  }
}
mixin Alisener {
  void senDate(String text);
}
class B implements Alisener {
  @override
  void senDate(String text) {
    print('B Received Data $text');
  }
}
class C implements Alisener {
  @override
  void senDate(String text) {
    print('C Received Data $text');
  }
}
class D implements Alisener {
  @override
  void senDate(String text) {
    print('D Received Data $text');
  }
}
void main(List<String> args){
  A a = A();
  Alisener b = new B();
  Alisener c = new C();
  Alisener d = new D();
  a.AddObject(b);
  a.AddObject(c);
  a.AddObject(d);
  a.SendDataAllIns('Welcome');
}
