import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: w,
            color: Colors.white,
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Berliana Purwasari Sormin'),
                const Text('&'),
                const Text('Yohanes Anggi Prawira Hutapea'),
                const Text('Minggu, 21 Feb 2021', style: TextStyle(height: 2, fontSize: 12)),
                Container(
                  height: 1,
                  margin: const EdgeInsets.only(top: 20),
                  color: const Color.fromARGB(255, 238, 236, 236),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text('Mulai Resepsi', style: TextStyle(fontSize: 12)),
                          Text('17.30 PM', style: TextStyle(fontSize: 18))
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 60,
                        color: const Color.fromARGB(255, 238, 236, 236),
                      ),
                      Column(
                        children: const [
                          Text('Selesai Resepsi', style: TextStyle(fontSize: 12)),
                          Text('19.00 PM', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.man),
                      Column(
                        children: const [
                          Text('Rizki Darmawan'),
                          Text('Tamu -'),
                        ],
                      ),
                      const Icon(Icons.woman),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.task_alt),
                        Container(width: 1, height: 18, margin: const EdgeInsets.symmetric(horizontal: 5), color: Colors.white),
                        const Text('BUKA', overflow: TextOverflow.fade, maxLines: 1),
                      ],
                    )
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('TUTUP', overflow: TextOverflow.ellipsis, maxLines: 1),
                  ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            title: const Text('LIST TAMU UNDANGAN'),
            initiallyExpanded: true,
            children: [
              ListTile(
                title: const Text('Rizki Darmawan'),
                tileColor: Colors.white,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Lihat Selengkapnya'),
                tileColor: Colors.white,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}