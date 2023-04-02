part of 'module_bloc.dart';

class ModuleState extends Equatable {
  final List<String> doneModuleList;

  const ModuleState({required this.doneModuleList});

  factory ModuleState.initial() {
    return const ModuleState(doneModuleList: []);
  }

  @override
  List<Object> get props => [doneModuleList];
}
