import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme_inherited_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/counter_cubit.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Theme Demo'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              ThemeInheritedWidget.of(context)?.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, count) {
            return Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counterCubit.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 8),
          FloatingActionButton(
            onPressed: counterCubit.decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
