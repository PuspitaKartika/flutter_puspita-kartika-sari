part of 'get_country_by_id_cubit.dart';

sealed class GetCountryByIdState extends Equatable {
  const GetCountryByIdState();

  @override
  List<Object> get props => [];
}

final class GetCountryByIdInitial extends GetCountryByIdState {}

final class GetCountryByIdLoading extends GetCountryByIdState {}

final class GetCountryByIdSuccess extends GetCountryByIdState {
  final List<CountryModel> data;

  const GetCountryByIdSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

final class GetCountryByIdFailure extends GetCountryByIdState {
  final String msg;

  const GetCountryByIdFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
