import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

/*
   BehaviorSubject<tipoVariavel> variavel = BehaviorSubject<tipoVariavel>();

  Sink<tipoVariavel> get setvariavelValue => variavel.sink;
  Stream<tipoVariavel> get getvariavelStream => variavel.stream;
  tipoVariavel get getvariavelValue => variavel.value;
*/

class AppBloc extends BlocBase {
  BehaviorSubject<int> counter = BehaviorSubject<int>.seeded(0);

  Sink<int> get setCounterValue => counter.sink;
  Stream<int> get getCounterStream => counter.stream;
  int get getCounterValue => counter.value;

  void increment() {
    setCounterValue.add(counter.value + 1);
  }

  @override
  void dispose() {
    super.dispose();
    counter.close();
  }
}
