enum DsfrComponentStateEnum {
  error,
  success,
  info,
  warning,
  none,
}

class DsfrComponentState {
  final DsfrComponentStateEnum state;
  final String? text;

  const DsfrComponentState._({
    this.state = DsfrComponentStateEnum.none,
    this.text,
  });

  const DsfrComponentState.error({required String errorMessage})
      : this._(
          state: DsfrComponentStateEnum.error,
          text: errorMessage,
        );

  const DsfrComponentState.success({String? message})
      : this._(
          state: DsfrComponentStateEnum.success,
          text: message,
        );

  const DsfrComponentState.info({String? message})
      : this._(
          state: DsfrComponentStateEnum.info,
          text: message,
        );

  const DsfrComponentState.warning({String? message})
      : this._(
          state: DsfrComponentStateEnum.warning,
          text: message,
        );

  const DsfrComponentState.none()
      : this._(
          state: DsfrComponentStateEnum.none,
        );
}
