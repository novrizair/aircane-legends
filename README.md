# Novrizal Airsyahputra (2206081780) PBP-A

## Tugas 7: Elemen Dasar Flutter

<details>
<summary>1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?</summary>

_Stateless_ dan _stateful_ adalah dua jenis _widget_ dalam Flutter yang berfungsi untuk membangun UI aplikasi. **_Stateless widget_** adalah _widget_ statis dengan seluruh konfigurasi yang ada di dalamnya telah diinisiasi sejak awal. Sedangkan, **_Stateful widget_** bersifat dinamis sehingga _widget_ ini dapat diperbarui kapan pun dibutuhkan berdasarkan _user actions_ atau saat terjadinya perubahan data. Perbedaan utama antara keduanya adalah cara pengelolaan perubahan data dan interaksi yang dilakukan dengan user. Berikut adalah beberapa perbedaan lain dari keduanya dalam hal pengembangan aplikasi Flutter:

a. Stateless Widget:
   - Tidak memiliki keadaan (_state_) yang berubah selama masa hidupnya, hanya menerima data saat dibuat, dan tidak dapat memperbarui data tersebut setelahnya.
   - Cocok untuk bagian dari UI yang tidak perlu berubah seiring waktu atau yang hanya memerlukan data saat awal pembuatan.
   - Contoh penggunaannya seperti teks, ikon, gambar, tombol dengan tampilan statis, atau bagian UI yang tidak perlu mengganti konten sesuai dengan tindakan pengguna.

b. Stateful Widget:
   - Memiliki keadaan (_state_) yang dapat berubah selama masa hidupnya, dapat diperbarui, dan membangun kembali tampilan mereka seiring dengan perubahan keadaan. Memiliki metode bernama `build` yang dipanggil ulang ketika ada perubahan data atau interaksi pengguna yang mempengaruhi tampilan _widget_.
   - Cocok untuk bagian dari UI yang memerlukan pembaruan berdasarkan interaksi pengguna, data yang dinamis, atau perubahan dalam aplikasi.
   - Contoh penggunaannya seperti daftar yang dapat digulir, formulir yang dapat diisi, atau elemen UI yang harus memperbarui tampilannya saat data berubah.
</details>

<details>
<summary>2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing!</summary>

a. `MyApp` (Class) --- Sebuah `StatelessWidget` yang merupakan _root_ (akar) dari aplikasi. Ini adalah _widget_ yang pertama kali dijalankan saat aplikasi dimulai. _Widget_ ini digunakan untuk mengonfigurasi aplikasi, mengatur tema serta halaman utama, dan merupakan _widget_ yang paling awal dijalankan saat aplikasi di-_run_.

b. `MaterialApp` (Widget) --- _Widget_ yang mengonfigurasi aplikasi Flutter dengan berbagai pengaturan. Contohnya untuk mengatur judul aplikasi, tema, dan halaman utama.

c. `title` (String) --- Properti dalam `MaterialApp` yang mendeskripsikan judul aplikasi.

d. `theme` (ThemeData) --- Properti yang mengatur tema visual aplikasi, termasuk palet warna, tampilan, dan gaya.

e. `colorScheme` (ColorScheme) --- Properti yang mengatur palet warna untuk tema aplikasi, diambil dari objek `ColorScheme`. Pada `main.dart`, `seedColor` diatur ke `Colors.indigo`.

f. `useMaterial3` (Boolean) --- Properti yang mengaktifkan atau menonaktifkan Material You (Material Design 3.0). Jika diatur ke `true`, maka aplikasi akan mengikuti Material You. Jika diatur ke `false`, maka akan mengikuti Material Design 2.0.

g. `home` (Widget) --- Properti yang mengatur halaman utama (root) aplikasi, yaitu `MyHomePage`.

h. `MyHomePage` (Class) --- `StatelessWidget` yang mewakili halaman utama (home page) aplikasi. Ini merupakan tampilan utama aplikasi dan digunakan untuk menampilkan daftar _item_ pada Aircane Legends.

i. `Scaffold` (Widget) --- _Widget_ yang mengatur struktur dasar halaman.

j. `AppBar` (Widget) --- _Widget_ yang menampilkan bilah atas pada halaman dengan judul 'Aircane Legends'.

k. `SingleChildScrollView` (Widget) --- Sebuah _wrapper_ yang memungkinkan kontennya dapat digulir. Ini berguna saat ada konten yang lebih panjang dari layar.

l. `Padding` (Widget) --- Digunakan untuk menambahkan jarak (_padding_) di sekitar konten _widget_-nya. Contohnya untuk mengatur jarak dari tepi halaman.

m. `Column` (Widget) --- Digunakan untuk menampilkan _widget-child_ secara vertikal. Dalam hal ini, digunakan untuk menampilkan elemen-elemen UI di halaman utama secara berurutan.

n. `Text` (Widget) --- _Widget_ untuk menampilkan teks. Hal tersebut digunakan untuk menampilkan judul 'Aircane Legends' dengan gaya tertentu.

o. `GridView.count` (Widget) --- _Widget_ untuk menampilkan _grid layout_ dengan jumlah kolom yang tetap. Digunakan untuk menampilkan daftar item toko.

p. `ShopCard` (Class) --- Sebuah `StatelessWidget` yang mewakili kartu untuk setiap item toko. Ini memungkinkan _user_ untuk mengeklik item.

q. `Material` (Widget) --- _Widget_ yang digunakan untuk mengatur warna latar belakang.

r. `InkWell` (Widget) --- _Widget_ yang digunakan untuk membuat area responsif terhadap sentuhan (taps). Ini memungkinkan _user_ untuk mengeklik kartu dan menampilkan pesan Snackbar.

s. `Icon` (Widget) --- Digunakan untuk menampilkan ikon pada kartu toko.

t. `SnackBar` (Widget) --- _Widget_ yang digunakan untuk menampilkan pesan sementara (biasanya notifikasi) di bagian bawah layar ketika _user_ mengklik item toko.
</details>

<details>
<summary>3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)!</summary>

- Lakukanlah instalasi Flutter (_download_ di sini untuk Windows:https://docs.flutter.dev/get-started/install/windows)
- Masuk ke direktori penyimpanan dan bukalah `Command Prompt`. _Generate_ proyek Flutter dan masuk ke dalam direktori proyek tersebut. `flutter create aircane_legends` dan `cd aircane_legends`.
- Lakukan `git init`, buat repositori aircane-legends pada Github, lakukan `git add . `, `git commit -m "Message`, `git remote add origin https://github.com/novrizair/aircane-legends.git`, dan `git push origin main`.
- Buat _file_ baru `menu.dart` dalam direktori `aircane_legends/lib`. Tambahkan kode `import 'package:flutter/material.dart';`.
- Dari _file_ `main.dart`, pindahkan kode baris ke-39 hingga akhir yang berisi `class MyHomePage` dan `class _MyHomePageState` ke _file_ `menu.dart`.
- Tambahkan kode `import 'package:aircane_legends/menu.dart';` pada awal _file_ `main.dart` untuk mengatasi _error_.
- Untuk ubah warna tema aplikasi menjadi indigo, ubahlah kode `main.dart` menjadi `colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),`.
- Pada `main.dart`, ubahlah `MyHomePage(title: 'Flutter Demo Home Page')` menjadi `MyHomePage()`.
- Pada `menu.dart`, ubah sifat _widget_ halaman dari _stateful_ menjadi _stateless_. Ubah menjadi `({Key? key}) : super(key: key);` dan hapus `final String title;`.
- Untuk menambahkan teks dan _Card_, tambahkan _items_ yang dijual, dengan _define_ tipe pada _list_. Berikanlah juga color untuk tiap _button_ untuk mengerjakan bonus pada tugas ini. 

```dart
final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Color(0xFF65451F)),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Color(0xFF765827)),
    ShopItem("Logout", Icons.logout, Color(0xFF83764F)),
  ];
```
- Tambahkan kode di bawah ini ke dalam _Widget_ `build`.
```dart
return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'PBP Shop', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
```
- Buatlah juga _widget stateless_ untuk menampilkan _card_.
```dart
class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.indigo,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
- Untuk mengerjakan bonus tugas, tambahkan kode `final Color color;` dalam _file_ `menu.dart` di `class ShopItem`. Tambahkan pula `this.color` dan pada _widget_ `build`-nya ubahlah menjadi `color: item.color`.
- Kerjakanlah README.md yang memiliki 3 pertanyaan. Kemudian, lakukanlah `git add .`, `git commit -m "TUGAS 7 + BONUS DONE`, dan `git push origin main`.
</details>

### Sumber Bacaan Tugas 7
- https://pbp-fasilkom-ui.github.io/ganjil-2024/docs/tutorial-6
- https://daengweb.id/belajar-flutter-basic-6-stateless-stateful-widget
- https://medium.com/flutter-developer-indonesia/belajar-widget-widget-pada-flutter-flutter-starter-pack-part-1-7f386a02fbb6
- https://api.flutter.dev/flutter/widgets/widgets-library.html
- https://docs.flutter.dev/ui/widgets

--- 

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements

<details>
<summary>1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!</summary>

Dalam konteks _software development_ berbasis Flutter, `Navigator.push()` dan `Navigator.pushReplacement()` merupakan metode untuk menavigasi antara berbagai layar dalam aplikasi. Utamanya, perbedaannya terletak pada caranya dalam memanipulasi tumpukan navigasi. Berikut ini perbedaannya secara lebih rinci di antara keduanya dan contohnya:

a. `Navigator.push()`:
   - Untuk menambahkan layar baru ke tumpukan navigasi tanpa menghapus layar sebelumnya dari tumpukan.
   - Dapat memungkinkan _user_ untuk kembali ke layar sebelumnya dengan menekan tombol `back` di perangkatnya.
   - `push()` akan menambahkan _route_ ke dalam _stack_ _route_ yang dikelola oleh `Navigator`.
   - Contoh penggunaannya

```dart
  ...
  if (item.name == "Tambah Item") {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ShopFormPage()));
  }
  ...
```

b. `Navigator.pushReplacement()`:
   - Untuk menambahkan layar baru ke tumpukan navigasi, tetapi menggantikan layar sebelumnya dalam prosesnya.
   - Dapat mengganti layar saat ini dengan layar baru dan menghapus layar yang sebelumnya ada di tumpukan.
   - `pushReplacement()` akan menghapus _route_ yang sedang ditampilkan kepada pengguna dan menggantinya dengan _route_ lain.
   - Contoh penggunaannya

```dart
  ...
  onTap: () {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => MyHomePage(),
      ));
  },
  ...
```
</details>

<details>
<summary>2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!</summary>

Setiap _layout widget_ memiliki perannya masing-masing dalam mengatur tata letak aplikasi. Berikut ini penjelasan rinci terkait jenis-jenis dan konteks penggunaannya:

a. _Container_:
- Merupakan sebuah _widget_ serbaguna yang dapat mengatur tata letak dan tampilan anak-anaknya dengan berbagai properti seperti _padding_, _margin_, _decoration_, dan lain-lain.
- Digunakan untuk mengelompokkan _widget_ lain, mengatur properti tata letak seperti _padding_, _margin_, dan menerapkan dekorasi seperti warna, gambar latar, atau bentuk pada elemen.

b. _Row_:
- Merupakan sebuah _widget_ yang mengatur elemen-elemen anak secara horizontal, berturut-turut dari kiri ke kanan.
- Digunakan untuk menyusun _widget_ secara horizontal, seperti menyusun tombol, teks, atau _widget_ lain secara berdampingan.

c. _Column_:
- Merupakan sebuah _widget_ yang mengatur elemen-elemen anak secara vertikal, dari atas ke bawah.
- Digunakan untuk menyusun _widget_ secara vertikal, seperti susunan teks, gambar, atau _widget_ lain secara berurutan dari atas ke bawah.

d. _ListView_:
- Merupakan sebuah _widget_ yang memungkinkan tampilan daftar dengan anak-anaknya yang dapat digulir.
- Digunakan untuk menampilkan daftar elemen yang bisa digulir, seperti daftar kontak, pesan, atau _item_ dalam suatu aplikasi.

e. _Stack_:
- Merupakan sebuah _widget_ yang mengatur anak-anaknya berdasarkan posisi, yang memungkinkan penumpukan dan penempatan elemen secara bebas di atas satu sama lain.
- Digunakan saat ingin menempatkan elemen secara terpisah, seperti teks di atas gambar, elemen _overlap_, atau tata letak yang lebih kompleks.

f. _Expanded & Flexible_:
- Keduanya digunakan dalam tata letak fleksibel. Expanded akan memberi widget anak ruang tambahan berdasarkan proporsi tertentu. Sedangkan, Flexible akan memberikan fleksibilitas dalam mengisi ruang berdasarkan faktor tertentu, seperti _flex_.
</details>

<details>
<summary>3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!</summary>

Pada tugas kali ini, saya menggunakan beberapa elemen _input_ pada _form_ yang digunakan untuk mengumpulkan data dari pengguna. Elemen-elemen tersebut di antaranya:

a. TextFormField "Item Name":
- Untuk mengumpulkan _input_ nama _item_ tipe data String dari pengguna.
- Diberikan suatu _validator_ agar _input_ yang dimasukkan tipe datanya sesuai.

b. TextFormField "Amount":
- Untuk mengumpulkan _input_ jumlah _item_ tipe data int dari pengguna.
- Diberikan suatu _validator_ agar _input_ yang dimasukkan tipe datanya sesuai.

c. TextFormField "Description":
- Untuk mengumpulkan _input_ deskripsi _item_ tipe data String dari pengguna.
- Diberikan suatu _validator_ agar _input_ yang dimasukkan tipe datanya sesuai.
</details>

<details>
<summary>4. Bagaimana penerapan clean architecture pada aplikasi Flutter?</summary>

_Clean Architecture_ merupakan pendekatan _software design_ untuk memisahkan bagian-bagian aplikasi agar lebih mudah dipahami, dioptimalkan, dan diuji. Dalam Flutter, penerapan _Clean Architecture _akan sangat membantu memisahkan peran-peran inti dalam aplikasi:

a. _Domain Layer_ (_Core_):

- Merupakan bagian terdalam dan mendasar dari aplikasi. 
- Isinya adalah aturan bisnis, logika, dan model domain yang bersifat agnostik _platform_.
- Tidak bergantung pada Flutter atau suatu_platform_ tertentu.
- Dapat berisi entitas dan abstraksi _repository_.

b. _Data Layer_:

- Berisi implementasi konkrit dari abstraksi yang didefinisikan di _domain layer_.
- Menyediakan implementasi spesifik untuk interaksi dengan sumber data, seperti _database_, API, atau penyimpanan lokal.
- Adalah suatu jembatan antara _domain layer_ dengan sumber data eksternal.

c. _Presentation Layer_:

- Merupakan bagian yang terhubung langsung dengan Flutter.
- Bertanggung jawab untuk mengatur UI, _state management_, dan interaksi pengguna.
- Memanfaatkan fitur-fitur dari Flutter seperti _widget_, BLoC, atau _Provider_ untuk mengatur tampilan dan interaksi pengguna.
</details>

<details>
<summary>5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (Bukan hanya sekadar mengikuti tutorial)</summary>

- Membuat minimal satu halaman baru pada aplikasi, yaitu `shoplist_form.dart` baru dengan tiga elemen input, yaitu `name`, `amount`, `description` (+ validasi input) serta tombol `save`.

```dart
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Item Name",
      labelText: "Item Name",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _name = value!;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Item Name tidak boleh kosong!";
      }
      return null;
    },
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Amount",
      labelText: "Amount",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _amount = int.parse(value!);
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Amount tidak boleh kosong!";
      }
      if (int.tryParse(value) == null) {
        return "Amount harus berupa angka!";
      }
      return null;
    },
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Description",
      labelText: "Description",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        _description = value!;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Description tidak boleh kosong!";
      }
      return null;
    },
  ),
),
...
// Pembuatan tombol SAVE
child: const Text(
        "SAVE",
        style: TextStyle(color: Colors.white),
      ),
```

- Mengarahkan pengguna ke halaman _form_ tambah _item_ baru ketika menekan tombol `Tambah Item` pada halaman utama. Untuk bonus, arahkan juga pengguna ke halaman _list_ daftar _item_ baru ketika menekan tombol `Lihat Item` pada halaman utama.

```dart
  if (item.name == "Tambah Item") {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ShopFormPage(),
      ),
    );
  }

  if (item.name == "Lihat Item") {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ItemListPage(),
      ),
    );
  }
```

- Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol `Save` pada halaman formulir tambah _item_ baru.

- Membuat sebuah _drawer_ (halaman utama, tambah _item_, dan lihat _item_ (bonus). Lalu, arahkan ke masing-masing halamannya) pada aplikasi.

    ```dart
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Lihat Item'),
            // Bagian redirection ke ItemListPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemListPage(),
                  ));
            },
          ),
    ```

- Tak lupa, lakukan _refactoring file_, pindahkan file `item_page.dart`, `menu.dart`, dan `shoplist_form.dart` ke folder `screens`.

- Kerjakanlah README.md yang memiliki 5 pertanyaan. Kemudian, lakukanlah `git add .`, `git commit -m "TUGAS 8 + BONUS DONE`, dan `git push origin main`.
</details>

### Sumber Bacaan Tugas 8
- https://pbp-fasilkom-ui.github.io/ganjil-2024/docs/tutorial-7
- https://api.flutter.dev/flutter/widgets/Navigator-class.html

--- 

## Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

<details><summary>1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?</summary>

Ya, kita dapat ambil data JSON tanpa membuat model terlebih dahulu. Namun, ada beberapa kondisi tertentu yang mana jika membuat model akan memberikan keuntungan. Berikut ini perbandingannya:

- Dengan model, maka akan sangat cocok untuk analisis data yang sifatnya kompleks. Jadi, jika tidak menggunakan model pada analisis data yang kompleks tidaklah cocok.
- Dengan model, juga cocok untuk struktur data yang terstruktur.
- Dengan model, pengambilan datanya membutuhkan langkah-langkah dalam pembuatan modelnya.

</details>

<details><summary>2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.</summary>

`CookieRequest` berfungsi mengirimkan permintaan HTTP yang menyertakan _cookie_ tertentu yang diperlukan _server_. Hal tersebut dapat menjadi sebuah bagian yang integral dari manajemen _session_ atau autentikasi dalam suatu aplikasi. Kemudian, _instance_ dari `CookieRequest` harus dibagi ke seluruh komponen dalam aplikasi flutter, beberapa alasannya sebagai berikut:

- Jika terdapat perubahan logika `CookieRequest`, maka secara otomatis akan tercermin di seluruh aplikasi. Hal tersebut disebabkan seluruh komponen menggunakan _instance_ sama.
- Pengelolaan _cookie_ konsisten di seluruh aplikasi. Hal tersebut akan membantu mencegah risiko yang dapat terjadi jika setiap komponen memiliki _instance_-nya sendiri.
- Pemeliharaan `CookieRequest` akan mudah karena hanya butuh dilakukan pada satu _instance_ saja. Hal tersebut akan dapat mengurangi risiko kesalahan dan memudahkan pemeliharaan.

</details>

<details><summary>3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.</summary>

Berikut ini beberapa langkah mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter, di antaranya:

- Data JSON salah satunya dapat diperoleh dari API dengan menggunakan metode HTTP, seperti `GET` untuk dapat respons data JSON. Lalu, ubah _string_ JSON menjadi struktur data yang dapat diakses Flutter. Hal tersebut dapat dilakukan dengan kelas `dart:convert`.
- Kemudian, jika ingin data JSON strukturnya tetap dan ingin menggunakan objek Dart, buatlah suatu model objek untuk ubah JSON menjadi objek Dart.
- Lalu, gunakanlah _widget_ Flutter untuk menampilkan data pada UI. Terakhir, setelah data dari JSON diberikan, _developer_ dapat menavigasi pengguna ke halaman baru untuk menampilkan data tersebut.
</details>


<details><summary>4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.</summary>

Berikut ini mekanisme autentikasinya:
- _User input_ data-data tentang akun tersebut, contohnya nama dan _password_.
- Data tersebut dikirim Flutter ke _server_ Django dengan HTTP _Request_, contohnya POST. Kemudian, data akan diterima dan diverifikasi oleh Django.
- Lalu, Django akan mengirimkan status autentikasi _valid_ atau pesan kegagalan (jika gagal _login_) ke Flutter. Jika berhasil _login_, maka Flutter akan menampilkan _webpage_ yang sesuai.

</details>
<details><summary>5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.</summary>

- AppBar: _Widget_ yang akan menampilkan bilah aplikasi pada bagian atas halaman.
- MaterialApp: _Widget_ _root_ untuk menginisialisasi Flutter.
- SingleChildScrollView: _Widget_ yang memungkinkan kontennya dapat di-_scroll_ jika melebihi ukuran layar.
- Column: _Widget_ yang mengatur _widget_-chil_d secara vertikal.
- Text: _Widget_ untuk menampilkan teks.
- SizedBox: _Widget_ untuk memberikan ruang kosong dengan _size_ tertentu.
- ElevatedButton: _Widget_ untuk membuat tombol dengan latar belakang.
- Scaffold: _Widget_ yang menyediakan struktur dasar untuk halaman, termasuk AppBar, Drawer, dan body.
- LeftDrawer: _Widget_ kustom untuk konten drawer di sisi kiri halaman.
</details>

<details><summary>6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).</summary>

- Membuat halaman _login_ pada _project_ tugas Flutter integrasikan sistem autentikasi Django dengan _project_ tugas Flutter, serta menginstall dan menambahkan _library_ yang dibutuhkan dengan menjalankan `pip install django-cors-headers`. Kemudian, tambahkan Cookies dengan menambahkan kode berikut ke `settings.py`:

```python
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
```

- Membuat fungsi _login_ pada `views.py` di file autentikasi lalu menghubungkannya ke `urls.py`.

```python
from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
```

- Membuat kustom model sesuai dengan proyek aplikasi Django dengan mem-_parse_ data JSON dari tugas Django sebelumnya dengan menggunakan _website_ Quicktype dan menyimpan kode Quicktype tersebut ke tugas Flutter.

```dart
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int amount;
    String description;

    Fields({
        required this.user,
        required this.name,
        required this.amount,
        required this.description,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        amount: json["amount"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "amount": amount,
        "description": description,
    };
}
```

- Buat halaman yang berisi daftar item. Hal tersebut dilakukan dengan menghubungkan web tugas Django ke tugas Flutter. Kemudian, jangan lupa untuk tampilkan _name_, _amount_, dan _description_ masing-masing _item_.

- Buat halaman yang berisi detail item. Hal ini dilakukan dengan membuat tombol detail pada `list_product.dart`.
</details>

 ### Sumber Bacaan Tugas 9
 - https://pbp-fasilkom-ui.github.io/ganjil-2024/docs/tutorial-8
 
