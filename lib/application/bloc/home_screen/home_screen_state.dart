part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenState extends Equatable {
  const HomeScreenState();
}

class HomeScreenInitial extends HomeScreenState {
  const HomeScreenInitial();

  @override
  List<Object> get props => [];
}

class FormLoading extends HomeScreenState {
  const FormLoading();

  @override
  List<Object> get props => [];
}

class FormHasErrors extends HomeScreenState {
  final String errorMessage;

  const FormHasErrors({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [
        errorMessage,
      ];
}
