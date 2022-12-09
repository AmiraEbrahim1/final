abstract class PubStates {}
class InitialState extends PubStates {}
class ChangeDropDownState extends PubStates {}
class ChangePageState extends PubStates {}
class ChangeAccountState extends PubStates {}
class GetHomeLoadingState extends PubStates {}
class GetHomeSuccessState extends PubStates {}
class GetHomeErrorState extends PubStates {
  final String error;//??
  GetHomeErrorState(this.error);
}
class OnPressExpandState extends PubStates {}
class IndexChangeState extends PubStates {}
class GetExperimentSuccessState extends PubStates {}
class GetExperimentErrorState extends PubStates {
  final String error;//??
  GetExperimentErrorState(this.error);
}
class GetSubscribedExperimentSuccessState extends PubStates {}
class GetSubscribedExperimentErrorState extends PubStates {
  final String error;//??
  GetSubscribedExperimentErrorState(this.error);
}
class GetTrendingLoadingState extends PubStates {}
class GetTrendingSuccessState extends PubStates {}
class GetTrendingErrorState extends PubStates {
}