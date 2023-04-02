part of 'module_bloc.dart';

abstract class ModuleEvent extends Equatable {
  const ModuleEvent();

  @override
  List<Object> get props => [];
}

class AddDoneModuleEvent extends ModuleEvent {
  final String doneModule;

  const AddDoneModuleEvent({required this.doneModule});

  @override
  List<Object> get props => [doneModule];
}
