

// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, avoid_print

import 'package:basketball_counter_app/home/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<Counter_Sates>
{
  CounterCubit() : super(Initial_Counter_Sate());

  int teamAPoints = 0;
  int teamBPoints = 0;
  late int incre_value;

  int incrementTeamAPoints()
  {
    if (incre_value == 1)
    {
      teamAPoints++;
      emit(Counter_A_OnePoint_State());
      print(teamAPoints);
      return teamAPoints;
    }
    else if (incre_value == 2)
    {
      teamAPoints += 2;
      emit(Counter_A_TwoPoints_State());
      print(teamAPoints);
      return teamAPoints;
    }
    else
    {
      teamAPoints += 3;
      emit(Counter_A_ThreePoints_State());
      print(teamAPoints);
      return teamAPoints;
    }
  }

  int incrementTeamBPoints()
  {
    if (incre_value == 1)
    {
      teamBPoints++;
      emit(Counter_B_OnePoint_State());
      print(teamBPoints);
      return teamBPoints;
    }
    else if (incre_value == 2)
    {
      teamBPoints += 2;
      emit(Counter_B_TwoPoints_State());
      print(teamBPoints);
      return teamBPoints;
    }
    else
    {
      teamBPoints += 3;
      emit(Counter_B_ThreePoints_State());
      print(teamBPoints);
      return teamBPoints;
    }
  }

  int restPoints()
  {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(Counter_Rest_State());
    return teamAPoints + teamBPoints;
  }
}