enum DsfrComposantStateEnum {
  error,
  success,
  info,
  warning,
  none,
}

class DsfrComposantState {
  final DsfrComposantStateEnum state;
  final String? text;

  const DsfrComposantState._({
    this.state = DsfrComposantStateEnum.none,
    this.text,
  });

  const DsfrComposantState.error({required String errorMessage})
      : this._(
          state: DsfrComposantStateEnum.error,
          text: errorMessage,
        );

  const DsfrComposantState.success({String? message})
      : this._(
          state: DsfrComposantStateEnum.success,
          text: message,
        );

  const DsfrComposantState.info({String? message})
      : this._(
          state: DsfrComposantStateEnum.info,
          text: message,
        );

  const DsfrComposantState.warning({String? message})
      : this._(
          state: DsfrComposantStateEnum.warning,
          text: message,
        );

  const DsfrComposantState.none()
      : this._(
          state: DsfrComposantStateEnum.none,
        );
}
