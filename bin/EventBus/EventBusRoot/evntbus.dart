class EvntBus {
  List<Subscraib> SubscraibChildrin = [];
  void AddChildSubscraib(Subscraib child) {
    if (!SubscraibChildrin.contains(child)) {
      SubscraibChildrin.add(child);
    }
  }

  void unAddChildSubscraib(Subscraib i) {
    SubscraibChildrin.remove(i);
  }

  void SendMessagePublish(DataTypeMessage msg) {
    for (Subscraib i in SubscraibChildrin) {
      if (i != msg.subscraib) {
        i.ReceivdMessage(msg);
      }
    }
  }

  EvntBus._();
  static EvntBus inst = EvntBus._();
  factory EvntBus() {
    return inst;
  }
}

mixin Subscraib {
  void ReceivdMessage(DataTypeMessage msg);
}

  class    DataTypeMessage {
  Subscraib? ins;
  void SetSubscraib(Subscraib obj) {
    this.ins = obj;
  }

  Subscraib get subscraib => this.ins!;
}
