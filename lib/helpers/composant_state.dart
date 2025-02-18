enum ComposantStateEnum {
  error,
  success,
  info,
  none,
}

class ComposantState {
  final ComposantStateEnum state;
  final String? text;

  const ComposantState({this.state = ComposantStateEnum.none, this.text});
}
