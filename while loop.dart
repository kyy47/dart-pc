import 'dart:io';

void main() {
  /*Nomer 1
  String menu = '''
1. Tampilan Data
2. Ubah Data
3. Hapus Data
4. Cari Data
5.Tambah Data
''';
  print(menu);

//Nomer 2
  List dataBuah = <String>['1. Mangga', '2. Anggur', '3. Apel', '4. Jeruk'];
  print(dataBuah);
 */
//Nomer 3
  String menu2Sepeda = '''
---List Menu---
1. Masukkan Data Array List
2. Hapus Data
3. Cari Data
4. Ubah Data
5. Tampilkan Semua Data Menggunakan Pengulangan
''';

  String menuSepeda = (menu2Sepeda);
  bool jalan = true;
  List<String> data_Sepeda = [];

  while (jalan) {
    print(menuSepeda);

    stdout.write('Silahkan Pilih Angka 1-5 : ');
    String pilihan = stdin.readLineSync()!;

    switch (pilihan) {
      case '1':
        stdout.write('masukan jumlah kolom : ');
        int kolom = int.parse(stdin.readLineSync()!);
        for (var i = 0; i < kolom; i++) {
          stdout.write('Masukan Data List : '); //fixie, balap, gunung, ontel
          String nama_Barang = stdin.readLineSync()!;
          data_Sepeda.add(nama_Barang);
        }
        break;

      case '2':
        stdout.write('Masukan Data Yang Ingin Di Hapus : ');
        int hapus = int.parse(stdin.readLineSync()!);
        data_Sepeda.removeAt(hapus - 1);
        break;

      case '3':
        stdout.write('Masukan Data Yang Ingin Anda Cari : ');
        String cari = stdin.readLineSync()!;
        int cariBarang = int.parse(cari);
        print(data_Sepeda[cariBarang - 1]);
        break;

      case '4':
        stdout.write('Masukan Data Yang Ingin Di Ubah : ');
        String ubah = stdin.readLineSync()!;
        int indexBarang = int.parse(ubah);

        stdout.write('Masukan Data Baru : ');
        String namaBarang2 = stdin.readLineSync()!;

        data_Sepeda[indexBarang - 1] = namaBarang2;
        break;

      case '5':
        print('');
        for (int i = 0; i < data_Sepeda.length; i++) {
          print('${i + 1}. ${data_Sepeda[i]}');
        }
        print('');
        break;
    }
  }
}
