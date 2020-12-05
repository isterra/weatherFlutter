import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  BehaviorSubject<int> current = BehaviorSubject<int>.seeded(0);

  Sink<int> get setcurrentValue => current.sink;
  Stream<int> get getcurrentStream => current.stream;
  int get getcurrentValue => current.value;

  void changeCurrent(int index) {
    setcurrentValue.add(index);
  }

  @override
  void dispose() {
    super.dispose();
    current.close();
  }
}
