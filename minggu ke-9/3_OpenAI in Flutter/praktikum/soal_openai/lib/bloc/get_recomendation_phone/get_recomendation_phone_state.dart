part of 'get_recomendation_phone_cubit.dart';

sealed class GetRecomendationPhoneState extends Equatable {
  const GetRecomendationPhoneState();

  @override
  List<Object> get props => [];
}

final class GetRecomendationPhoneInitial extends GetRecomendationPhoneState {}

final class GetRecomendationPhoneLoading extends GetRecomendationPhoneState {}

final class GetRecomendationPhoneSuccess extends GetRecomendationPhoneState {
  final String result;

  const GetRecomendationPhoneSuccess({required this.result});
}

final class GetRecomendationPhoneFailure extends GetRecomendationPhoneState {
  final String msg;

  const GetRecomendationPhoneFailure({required this.msg});
}
