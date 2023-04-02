import 'dart:developer';

import 'package:flutter/material.dart';

class ModuleList extends StatefulWidget {
  const ModuleList({Key? key}) : super(key: key);

  @override
  State<ModuleList> createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> _moduleList = const [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Program Dart Pertamamu',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  Widget _complexWidget() {
    log("Complex Widget Build");
    return Column(
      children: [
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
        Column(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    log("ModuleList Build");
    return Column(
      children: [
        _complexWidget(),
        Expanded(
          child: ListView.builder(
            itemCount: _moduleList.length,
            itemBuilder: (context, index) {
              return ModuleTile(
                moduleName: _moduleList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class ModuleTile extends StatefulWidget {
  final String moduleName;

  const ModuleTile({
    Key? key,
    required this.moduleName,
  }) : super(key: key);

  @override
  State<ModuleTile> createState() => _ModuleTileState();
}

class _ModuleTileState extends State<ModuleTile> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    log("ModuleTile Build");
    return ListTile(
      title: Text(widget.moduleName),
      trailing: isDone
          ? const Icon(Icons.done)
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  isDone = true;
                });
              },
              child: const Text('Done'),
            ),
    );
  }
}
