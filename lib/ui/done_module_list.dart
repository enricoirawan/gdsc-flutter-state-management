import 'package:dicodingacademy/module_bloc/module_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: BlocBuilder<ModuleBloc, ModuleState>(
        builder: (context, state) => ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.doneModuleList[index]),
            );
          },
          itemCount: state.doneModuleList.length,
        ),
      ),
    );
  }
}
