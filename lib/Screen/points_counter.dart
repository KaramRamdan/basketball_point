
import 'package:basketball_point/Cubit/cubit.dart';
import 'package:basketball_point/Cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounter extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit ,CounterStates>(
      listener: (context,state){},
        builder:(context,state){
        var cubit=BlocProvider.of<CounterCubit>(context);
          return Scaffold(backgroundColor: Colors.grey[200],
            appBar: AppBar(
              backgroundColor: Colors.grey[200],
              title: Center(
                child: Text('Points Counter',
                style:TextStyle(
                  color: Colors.black
                ) ,
                ),
              ),
              elevation: 0,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                              backgroundColor: Colors.blue[100],
                            ),
                          ),
                          Text(
                            '${cubit.teamAPoints}',
                            style: TextStyle(
                              fontSize: 100


                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              primary: Colors.blue[100],
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'A', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(clipBehavior: Clip.antiAliasWithSaveLayer,
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[200],
                              minimumSize: Size(150, 50),

                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'A', buttonNumber: 2);
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue[300],
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'A', buttonNumber: 3);
                            },
                            child: Text(
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
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent:50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                              backgroundColor: Colors.orange[100]
                            ),
                          ),
                          Text(
                            '${cubit.teamBPoints}',
                            style: TextStyle(
                              fontSize: 100,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              primary: Colors.orange[100],
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'B', buttonNumber: 1);
                            },
                            child: Text(
                              'Add 1 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange[200],
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'B', buttonNumber:2);
                            },
                            child: Text(
                              'Add 2 Point ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange[300],
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              cubit.PointIncrement(team:'B', buttonNumber:3);
                            },
                            child: Text(
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
                    padding: EdgeInsets.all(8),
                    primary: Colors.grey[400],
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    cubit.Reset();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },

    );
  }
}
