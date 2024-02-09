import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/home_controller/home_event.dart';
import 'package:go_pay/controller/home_controller/home_repository.dart';
import 'package:go_pay/controller/home_controller/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({
    required this.homeRepository,
  }) : super(HomeState.initial()) {}
}
