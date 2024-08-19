part of 'onboarding_cubit.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

final class OnboardingInitial extends OnboardingState {}

final class OnboardingChangePage extends OnboardingState {
  final int page;
  const OnboardingChangePage(this.page);
}
final class OnboardingNextPage extends OnboardingState {}

