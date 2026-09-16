# Tugas 5 - Event dan State

Aplikasi Flutter untuk demonstrasi routing, navigation, event, dan state.

## Fitur

- Beranda `StatelessWidget` dengan tiga card katalog dalam `ListView`.
- Setiap card memakai `ListTile` dan berpindah halaman melalui `Navigator.push`.
- Halaman detail adalah `StatefulWidget`; tombol pilihan paket mengubah state.
- AppBar menyediakan tombol kembali ke beranda memakai `Navigator.pop`.

## Menjalankan aplikasi

```bash
flutter pub get
flutter run
```

## Server dan database

Proyek ini adalah demonstrasi UI, navigation, event, dan state secara lokal.
Tidak memakai server maupun database MySQL, sehingga tidak ada proses import database.
