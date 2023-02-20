import 'package:speedometer/scr/core/widgets/buttons/small_black_button.dart';

class BigBlackButton extends SmallBlackButton {
  static const _heightButton = 60.0;

  const BigBlackButton({
    super.key,
    required super.title,
    required super.onPress,
    super.height = _heightButton,
  });
}
