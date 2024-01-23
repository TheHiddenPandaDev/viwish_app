import 'package:app/application/bloc/home_screen/home_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenBloc _homeScreenBloc = GetIt.instance.get<HomeScreenBloc>();

  static String routeName = 'home';

  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Home'),
              const TextField(
                decoration: InputDecoration.collapsed(hintText: 'Username'),
              ),
              const TextField(
                decoration: InputDecoration.collapsed(hintText: 'Password'),
              ),
              InkWell(
                onTap: () {
                  _homeScreenBloc.add(const SendInformation(
                    username: 'dani',
                    password: '1234',
                  ));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  child: const Text(
                    'Enviar',
                  ),
                ),
              ),
              BlocBuilder<HomeScreenBloc, HomeScreenState>(
                bloc: _homeScreenBloc,
                builder: (context, state) {
                  if (state is FormLoading) {
                    return const CircularProgressIndicator(color: Colors.black);
                  }

                  if (state is FormHasErrors) {
                    return Text(
                      state.errorMessage,
                      style: const TextStyle(
                        color: Colors.redAccent,
                      ),
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
