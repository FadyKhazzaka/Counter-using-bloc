import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(DecreamentEvent());
              },
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text(
                    '0',
                    style: TextStyle(fontSize: 24),
                  );
                } else if (state is CounterValueChangeState) {
                  return Text(
                    ' ${state.counter.toString()}',
                    style: const TextStyle(fontSize: 24),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(IncreamentEvent());
              },
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(ResetEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}
