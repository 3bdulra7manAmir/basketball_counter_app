// ignore_for_file: camel_case_types, avoid_print

import 'package:basketball_counter_app/home/cubit/cubit.dart';
import 'package:basketball_counter_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()
{
  runApp(const pointsCounter());
}

class pointsCounter extends StatelessWidget
{
  const pointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp
      (
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
      
  }
}
