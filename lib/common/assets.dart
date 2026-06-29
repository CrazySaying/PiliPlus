abstract final class Assets {
  static const digitalNum = 'digital_id_num';

  static const logo = 'assets/images/logo/logo.png';
  static const logo2 = 'assets/images/logo/logo_2.png';
  static const logoIco = 'assets/images/logo/ico/app_icon.ico';
  static const logoLarge = 'assets/images/logo/desktop/logo_large.png';

  static const vipIcon = 'assets/images/big-vip.svg';
  static const avatarPlaceHolder = 'assets/images/noface.jpeg';
  static const loading = 'assets/images/loading.png';
  static const buffering = 'assets/images/loading.webp';
  static const topicHeader = 'assets/images/topic-header-bg.png';
  static const trendingBanner = 'assets/images/trending_banner.png';
  static const ai = 'assets/images/ai.png';
  static const error = 'assets/images/error.svg';

  static const livingChart = 'assets/images/live.gif';
  static const livingStatic = 'assets/images/live.png';
  static const livingRect = 'assets/images/live/live.gif';
  static const livingBackground = 'assets/images/live/default_bg.webp';

  static const thunder1 = 'assets/images/paycoins/ic_thunder_1.png';
  static const thunder2 = 'assets/images/paycoins/ic_thunder_2.png';
  static const thunder3 = 'assets/images/paycoins/ic_thunder_3.png';
  static const notEnough = 'assets/images/paycoins/ic_22_not_enough_pay.png';
  static const mario = 'assets/images/paycoins/ic_22_mario.png';
  static const gunSister = 'assets/images/paycoins/ic_22_gun_sister.png';
  static const payBox = 'assets/images/paycoins/ic_pay_coins_box.png';
  static const coinsOne = 'assets/images/paycoins/ic_coins_one.png';
  static const coinsTwo = 'assets/images/paycoins/ic_coins_two.png';
  static const left = 'assets/images/paycoins/ic_left.png';
  static const leftDisable = 'assets/images/paycoins/ic_left_disable.png';
  static const right = 'assets/images/paycoins/ic_right.png';
  static const rightDisable = 'assets/images/paycoins/ic_right_disable.png';
  static const panelClose = 'assets/images/paycoins/ic_panel_close.png';

  // Single-pass pipeline: Clamp → Restore → Upscale CNN x2 → mpv scaler → OUTPUT.
  // No AutoDownscalePre (destructive downscale→upscale cycle) and no secondary
  // upscale pass — one high-quality inference pass beats multiple iterations.
  static const List<String> mpvAnime4KShaders = [
    'Anime4K_Clamp_Highlights.glsl',
    'Anime4K_Restore_CNN_VL.glsl',
    'Anime4K_Upscale_CNN_x2_VL.glsl',
  ];

  static const mpvAnime4KShadersLite = [
    'Anime4K_Clamp_Highlights.glsl',
    'Anime4K_Restore_CNN_M.glsl',
    'Anime4K_Restore_CNN_S.glsl',
    'Anime4K_Upscale_CNN_x2_M.glsl',
  ];

  // FSRCNNX pipeline: trained on live-action content, local residual learning
  // with recursive blocks. Better for non-anime material than Anime4K.
  // Requires OUTPUT/MAIN > 1.4x scale factor.
  static const mpvFSRCNNXShaders = [
    'FSRCNNX_x2_8-0-4-1.glsl',
  ];

  // FSRCNNX Pro pipeline: NNEDI3 → FSRCNNX x2 → RAVU-zoom → mpv scaler.
  // Full multi-stage pipeline for maximum quality on low-res sources (≤720p)
  // targeting 4K output. NNEDI3 activates at ≥2x scale, FSRCNNX at ≥1.4x,
  // RAVU-zoom handles arbitrary-ratio edge repair + anti-aliasing.
  static const mpvFSRCNNXProShaders = [
    'nnedi3-nns32-win8x4.hook',
    'FSRCNNX_x2_8-0-4-1.glsl',
    'ravu-zoom-ar-r3.hook',
  ];
}
