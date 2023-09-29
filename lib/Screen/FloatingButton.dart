import 'package:counter19/Manger/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingButtomSection extends StatelessWidget {
  const FloatingButtomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().increament();
          },
          child: Text(
            "+",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.red,
        ),
        SizedBox(
          height: 15,
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().decreament();
          },
          child: Text(
            "-",
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
