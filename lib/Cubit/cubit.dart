import 'package:basketball_point/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());


  int teamAPoints = 0;
  int teamBPoints = 0;

  void PointIncrement({
    required String team,
    required int buttonNumber,
  }) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterTeamAState());
    }else{
      teamBPoints+=buttonNumber;
      emit(CounterTeamBState());
    }
  }
  void Reset(){
    teamAPoints = 0;
    teamBPoints = 0;
emit(CounterResetState());
  }
}
