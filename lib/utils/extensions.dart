import 'package:flutter/material.dart';

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}

extension Keyboard on Never {
  static void hide() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
