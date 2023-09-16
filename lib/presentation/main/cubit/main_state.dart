part of 'main_cubit.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class MainScrolling extends MainState {
  const MainScrolling({required this.screen});
  final int screen;

  @override
  List<Object> get props => [screen];
}
