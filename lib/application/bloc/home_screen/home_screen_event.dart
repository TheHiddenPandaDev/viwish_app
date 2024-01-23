part of 'home_screen_bloc.dart';

abstract class HomeScreenEvent extends Equatable {
  const HomeScreenEvent();

  @override
  List<Object?> get props => [];
}

class SendInformation extends HomeScreenEvent {
  final String username;
  final String password;

  const SendInformation({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [
        username,
        password,
      ];
}
