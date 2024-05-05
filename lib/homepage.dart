import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'edit_page.dart'; // Impor halaman edit

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan Khas Sulawesi Selatan'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[100], // Ganti dengan warna yang relevan dengan tema Anda
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'), // Ganti dengan path gambar latar belakang Anda
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildFoodItem(
              context,
              'Nasi Goreng Sulawesi',
              'Nasi goreng merah khas Makassar disajikan dengan cita rasa pedas yang khas dan memukau. Bumbu khas Makassar memberikan sentuhan istimewa pada hidangan ini. Untuk membuat nasi goreng merah khas Makassar, mulailah dengan membuat pasta merah dari cabai merah besar, cabai merah keriting, bawang merah, bawang putih, jahe, dan kunyit yang dihaluskan. Selanjutnya, tumis bumbu halus dengan bawang putih dan bawang merah cincang hingga harum, lalu tambahkan pasta merah yang sudah dibuat dan tumis hingga matang. Setelah itu, masukkan nasi, saus sambal, kecap manis, garam, dan merica secukupnya, aduk rata hingga nasi tercampur merata dengan bumbu. Tambahkan telur goreng dan irisan daun bawang, aduk sebentar lagi, dan hidangkan nasi goreng merah Makassar panas dengan pelengkap mentimun atau tomat sesuai selera. Selamat mencoba!',
              'assets/nasigoreng.jpg',
            ),
            _buildFoodItem(
              context,
              'Coto Makassar',
              'Untuk membuat Coto Makassar versi original, pertama-tama didihkan air dalam panci besar, lalu masukkan potongan daging sapi bersama dengan serai, daun salam, daun jeruk, lengkuas, dan sereh. Masak dengan api sedang hingga daging empuk. Setelah empuk, angkat daging, tiriskan, dan potong-potong sesuai selera. Selanjutnya, panaskan minyak dalam wajan, tumis bumbu halus hingga harum dan matang. Kemudian masukkan bumbu yang telah ditumis ke dalam kaldu daging yang sudah dimasak. Aduk rata, masak dengan api kecil selama sekitar 1 jam agar bumbu meresap dan kuah mengental. Setelah itu, tambahkan kacang tanah yang telah dihaluskan ke dalam kuah, aduk rata, dan masak sebentar lagi. Terakhir, tuangkan Coto Makassar ke dalam mangkuk saji, taburi dengan bawang goreng, dan sajikan dengan pelengkap seperti sambal kecap, irisan jeruk nipis, dan ketupat atau nasi putih. Selamat menikmati cita rasa kaya rempah dari Coto Makassar!',
              'assets/cotomakassar.jpg',
            ),
            _buildFoodItem(
              context,
              'Pallubasa',
              'Pallubasa, sup khas dari Makassar, Sulawesi Selatan, dibuat dengan menggunakan potongan daging sapi, biasanya dari bagian iga sapi, yang direbus hingga empuk. Setelah empuk, daging dipotong-potong dan disisihkan. Bumbu halus yang terdiri dari bawang merah, bawang putih, jahe, kunyit, ketumbar, jintan, lada hitam, pala, dan kemiri disangrai, kemudian ditumis hingga harum dan matang. Selanjutnya, santan, serai, daun salam, lengkuas, daun jeruk, sereh, gula merah, dan garam dimasukkan ke dalam panci besar, lalu didihkan. Potongan daging sapi dimasukkan ke dalam panci, diaduk rata, dan didiamkan hingga daging matang dan meresap bumbu. Pallubasa disajikan panas dengan irisan jeruk nipis sebagai pelengkapnya, dan biasanya dinikmati dengan ketupat atau nasi putih. Selamat menikmati cita rasa kaya rempah dari Pallubasa!',
              'assets/pallubasa.jpg',
            ),
            _buildFoodItem(
              context,
              'Konro',
              'Konro, hidangan khas dari Makassar, Sulawesi Selatan, dimulai dengan merebus potongan iga sapi dalam air bersama dengan serai, daun salam, daun jeruk, sereh, dan lengkuas hingga daging empuk. Setelah empuk, potongan iga sapi diangkat dan disisihkan. Bumbu halus yang terdiri dari bawang merah, bawang putih, jahe, lengkuas, kunyit, ketumbar, merica, jintan, dan kemiri disangrai, kemudian ditumis dengan minyak goreng hingga harum. Kelapa parut yang sudah disangrai ditambahkan ke dalam bumbu tumis, lalu ditumis hingga kelapa parut berubah warna menjadi kecokelatan. Bumbu tumis kemudian dimasukkan ke dalam kuah rebusan iga sapi, aduk rata, dan biarkan mendidih. Sesudah itu, tambahkan garam secukupnya untuk memperkaya rasa. Potongan iga sapi yang telah direbus dan diberi bumbu kemudian dipanggang hingga matang dan berwarna kecokelatan. Konro disajikan panas dengan taburan bawang merah goreng, bawang daun, sambal kecap, dan irisan jeruk nipis sebagai pelengkapnya. Selamat menikmati cita rasa kaya rempah dari Konro!',
              'assets/konro.jpg',
            ),
            // Add more food items here...
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(BuildContext context, String title, String description, String imagePath) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to detail page when item is tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(title: title, description: description, imagePath: imagePath)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Navigate to edit page when edit button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPage(title: title, description: description, imagePath: imagePath)),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
