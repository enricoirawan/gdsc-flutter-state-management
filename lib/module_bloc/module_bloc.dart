import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'module_event.dart';
part 'module_state.dart';

class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  ModuleBloc() : super(ModuleState.initial()) {
    on<AddDoneModuleEvent>((event, emit) {
      List<String> doneModuleList = List.from(state.doneModuleList)
        ..add(event.doneModule);

      emit(ModuleState(doneModuleList: doneModuleList));
    });
  }
}
