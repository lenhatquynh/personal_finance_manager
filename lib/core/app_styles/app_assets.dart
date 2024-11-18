import 'package:vector_graphics/vector_graphics.dart';

/// {@template app_icons}
/// The [AppAssets] class contains all the icons used in the app.
/// {@endtemplate}
abstract class AppAssets {
  static const appIcon = 'rasters/app-icon.png';

  // add square  icon
  static const addSquare = AssetBytesLoader(
    'vectors/add-square.svg',
    packageName: 'assets',
  );
}
