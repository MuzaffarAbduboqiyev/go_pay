import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_pay/controller/countries_controller/countries_event.dart';
import 'package:go_pay/controller/countries_controller/countries_repository.dart';
import 'package:go_pay/controller/countries_controller/countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  final CountriesRepository countriesRepository;

  CountriesBloc({
    required this.countriesRepository,
  }) : super(CountriesState.initial()) {}
}
