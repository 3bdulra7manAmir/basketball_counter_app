import 'package:basketball_counter_app/home/cubit/cubit.dart';
import 'package:basketball_counter_app/home/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<CounterCubit, Counter_Sates>(builder: (context, state)
    {
      return SafeArea(
        child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: const Text('Points Counter'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                              style: const TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8), backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 1;
                                BlocProvider.of<CounterCubit>(context).incrementTeamAPoints();
                              },
                              child: const Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 2;
                                BlocProvider.of<CounterCubit>(context).incrementTeamAPoints();
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 3;
                                BlocProvider.of<CounterCubit>(context).incrementTeamAPoints();
                              },
                              child: const Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 500,
                        child: VerticalDivider(
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                              style: const TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8), backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 1;
                                BlocProvider.of<CounterCubit>(context).incrementTeamBPoints();
                              },
                              child: const Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 2;
                                BlocProvider.of<CounterCubit>(context).incrementTeamBPoints();
                              },
                              child: const Text(
                                'Add 2 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context).incre_value = 3;
                                BlocProvider.of<CounterCubit>(context).incrementTeamBPoints();
                              },
                              child: const Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(8), backgroundColor: Colors.orange,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context).restPoints();
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    },
      listener: (context, state)
      {
        if (state is Counter_A_OnePoint_State || state is Counter_A_TwoPoints_State || state is Counter_A_ThreePoints_State)
        {
          //BlocProvider.of<CounterCubit>(context).incrementTeamAPoints();
        }
        else if (state is Counter_B_OnePoint_State || state is Counter_B_TwoPoints_State || state is Counter_B_ThreePoints_State)
        {
          //BlocProvider.of<CounterCubit>(context).incrementTeamBPoints();
        }
        else if (state is Counter_Rest_State)
        {
          //BlocProvider.of<CounterCubit>(context).restPoints();
        }
      },
    );
  }
}