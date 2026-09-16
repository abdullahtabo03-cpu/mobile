import 'package:flutter/material.dart';

import 'catalog_item.dart';
import 'detail_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  static const List<CatalogItem> catalogs = [
    CatalogItem(
      title: 'Paket Starter',
      price: 'Rp 1.500.000',
      description: 'Pilihan awal untuk membangun kehadiran digital yang rapi.',
      features: ['Landing page responsif', 'Desain sederhana', 'Revisi 1 kali'],
      icon: Icons.language,
      colorValue: 0xff7c4dff,
    ),
    CatalogItem(
      title: 'Paket Profesional',
      price: 'Rp 5.000.000',
      description: 'Solusi lengkap pembuatan aplikasi modern dan scalable.',
      features: [
        'Desain UI/UX khusus',
        'Setup database',
        'Dukungan teknis 24/7',
      ],
      icon: Icons.laptop_chromebook,
      colorValue: 0xff2979ff,
    ),
    CatalogItem(
      title: 'Paket Bisnis',
      price: 'Rp 9.000.000',
      description: 'Paket menyeluruh untuk produk digital yang siap berkembang.',
      features: ['Aplikasi multi-halaman', 'Integrasi API', 'Revisi 3 kali'],
      icon: Icons.business_center,
      colorValue: 0xff00a896,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fb),
      appBar: AppBar(
        title: const Text('Katalog Jasa Digital'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: catalogs.length,
        separatorBuilder: (_, _) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = catalogs[index];
          final color = Color(item.colorValue);
          return Card(
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(18),
              leading: CircleAvatar(
                radius: 27,
                backgroundColor: color.withValues(alpha: 0.14),
                child: Icon(item.icon, color: color),
              ),
              title: Text(
                item.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text('${item.price} / proyek'),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (_) => DetailScreen(item: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
