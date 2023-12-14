import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ExpansionTile(
            title: const Text('ENTRI TAMU UNDANGAN'),
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(right: 10, bottom: 15, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: const [
                            Icon(Icons.search),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Nama Tamu',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Dari:',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: w * (65/100),
                          child: Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('HADIR'),
                            ),
                          ),
                        ),
                        SizedBox(width: w * (5/100)),
                        Expanded(
                          child: SizedBox(
                            width: w * (30/100),
                            child: TextButton(
                              onPressed: () {}, 
                              child: const Text('CLEAR'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '*Bagi tamu yang tidak membawa qrcode atau sebagai tamu undangan group, silahkan entrikan nama tamu secara manual.',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('TAMU UNDANGAN YANG HADIR'),
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(right: 10, bottom: 15, left: 10),
                child: const Text('OK'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}