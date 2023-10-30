part of 'get_all_country_cubit.dart';

sealed class GetAllCountryState extends Equatable {
  const GetAllCountryState();

  @override
  List<Object> get props => [];
}

final class GetAllCountryInitial extends GetAllCountryState {}

class GetAllCountryLoading extends GetAllCountryState {}

class GetAllCountrySuccess extends GetAllCountryState {
  final List<CountryModel> data;

  const GetAllCountrySuccess({required this.data});
  @override
  List<Object> get props => [data];
}

class GetAllCountryFailure extends GetAllCountryState {
  final String msg;

  const GetAllCountryFailure({required this.msg});
  @override
  List<Object> get props => [msg];
}
