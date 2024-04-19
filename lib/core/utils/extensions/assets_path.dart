extension AssetPaths on String {
  String get png => 'assets/images/$this.webp';
  String get svg => 'assets/icons/$this.svg';
}