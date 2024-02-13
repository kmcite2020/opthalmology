import '../../main.dart';

String get randomID => Uuid().v4();

extension ObjectExtensions on Object? {
  Widget text({
    TextStyle? style,
    double? textScaleFactor,
  }) =>
      Text(
        toString(),
        style: style,
        textScaler: TextScaler.linear(textScaleFactor ?? 1),
      );
}

extension WidgetExtensions on Widget {
  Widget pad({
    EdgeInsetsGeometry? padding,
  }) =>
      Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: this,
      );
  Widget center() => Center(child: this);
}
