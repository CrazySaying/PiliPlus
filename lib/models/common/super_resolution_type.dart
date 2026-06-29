import 'package:PiliPlus/models/common/enum_with_label.dart';

enum SuperResolutionType with EnumWithLabel {
  disable('禁用'),
  efficiency('Anime4K 效率'),
  quality('Anime4K 画质'),
  fsrcnnx('FSRCNNX'),
  fsrcnnxPro('FSRCNNX Pro'),
  ;

  @override
  final String label;
  const SuperResolutionType(this.label);
}
