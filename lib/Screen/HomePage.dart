import 'package:counter19/Manger/counter/counter_cubit.dart';
import 'package:counter19/Screen/FloatingButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageSection extends StatelessWidget {
  const HomePageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 126, 161),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "My Counter Cubit",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          SizedBox(
            height: 10,
          ),
          Center(child: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              if (state is CounterInitial) {
                return Text(
                  "0",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                );
              }
              if (state is CounterValueChanged) {
                return Text(
                  "${state.counter.toString()} ",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                );
              } else {
                return SizedBox();
              }
            },
          )),
        ],
      ),
      floatingActionButton: FloatingButtomSection(),
    );
  }
}
