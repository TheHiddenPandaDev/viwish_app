import 'package:app/domain/home_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

@lazySingleton
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final HomeService _homeService;

  HomeScreenBloc(
    this._homeService,
  ) : super(const HomeScreenInitial()) {
    on<SendInformation>(_handleSendInformation);
  }

  Future<void> _handleSendInformation(
    SendInformation event,
    Emitter<HomeScreenState> emit,
  ) async {

    emit(const FormLoading());

    await Future.delayed(const Duration(seconds: 3));

    final bool isValid = _homeService.checkUser(event.username, event.password);

    if(!isValid){
      emit(const FormHasErrors(errorMessage: 'Tiene errores...'));
      return Future.value();
    }

    emit(const HomeScreenInitial());
  }
}
