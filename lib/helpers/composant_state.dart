enum ComposantStateEnum {
  error,
  success,
  info,
  warning,
  none,
}

class ComposantState {
  final ComposantStateEnum state;
  final String? text;

  const ComposantState({this.state = ComposantStateEnum.none, this.text});
}
