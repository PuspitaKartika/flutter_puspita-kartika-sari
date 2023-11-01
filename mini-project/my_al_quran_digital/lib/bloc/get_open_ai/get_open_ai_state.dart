part of 'get_open_ai_cubit.dart';

sealed class GetOpenAiState extends Equatable {
  const GetOpenAiState();

  @override
  List<Object> get props => [];
}

final class GetOpenAiInitial extends GetOpenAiState {}

final class GetOpenAiLoading extends GetOpenAiState {}

final class GetOpenAiSuccess extends GetOpenAiState {
  final String data;

  const GetOpenAiSuccess({required this.data});
  @override
  List<Object> get props => [data];
}

final class GetOpenAiFailure extends GetOpenAiState {
  final String msg;

  const GetOpenAiFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
