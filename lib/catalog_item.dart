import 'package:flutter/material.dart';

class CatalogItem {
  const CatalogItem({
    required this.title,
    required this.price,
    required this.description,
    required this.features,
    required this.icon,
    required this.colorValue,
  });

  final String title;
  final String price;
  final String description;
  final List<String> features;
  final IconData icon;
  final int colorValue;
}
