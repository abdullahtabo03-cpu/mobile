class CatalogItem {
  const CatalogItem({
    required this.title,
    required this.price,
    required this.description,
    required this.features,
    required this.iconCode,
    required this.colorValue,
  });

  final String title;
  final String price;
  final String description;
  final List<String> features;
  final int iconCode;
  final int colorValue;
}
