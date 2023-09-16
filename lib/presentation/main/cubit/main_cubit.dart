import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  void scrollTo(int to) {
    emit(MainInitial());
    emit(MainScrolling(screen: to));
  }
}
