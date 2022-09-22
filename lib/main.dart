import 'package:basketball_point/Screen/points_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/cubit.dart';


void main() {
  runApp( MyApp());
}
class  MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  { return BlocProvider(
    create: (context)=>CounterCubit(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PointsCounter(),
    ),
  ) ;
  }
}
