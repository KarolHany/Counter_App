import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;
  void increament() {
    counter++;
    emit(CounterValueChanged(counter: counter));
  }

  void decreament() {
    counter--;
    emit(CounterValueChanged(counter: counter));
  }
}
