import 'package:PiliPlus/models/common/enum_with_label.dart';

enum SuperResolutionType with EnumWithLabel {
  disable('禁用'),
  efficiency('Anime4K 效率'),
  quality('Anime4K 画质'),
  fsrcnnx('FSRCNNX 4x'),
  fsrcnnxPro('FSRCNNX 增强'),
  ;

  @override
  final String label;
  const SuperResolutionType(this.label);
}
