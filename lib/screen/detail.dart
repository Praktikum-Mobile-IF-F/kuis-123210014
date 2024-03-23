import 'package:flutter/material.dart';
import 'package:kuis/data/game_store.dart';

class Detail extends StatelessWidget {
  final GameStore game;
  Detail({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isBookAvailable = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          game.name,
        ),
        centerTitle: true,
      ),
      body: ListView(
        // padding: EdgeInsets.all(6.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                game.imageUrls[0],
                width: 800,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Deskripsi : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(game.reviewCount),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Release : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(game.releaseDate),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Review body : ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(game.reviewCount),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _isBookAvailable
                ? () {
                    setState(() {
                      _isBookAvailable =
                          false; // Mengubah status menjadi tidak tersedia
                    });
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Berhasil meminjam buku"),
                      backgroundColor: Colors.green,
                    ));
                  }
                : null,
            child: Text('Beli'),
          ),
        ],
      ),
    );
  }
}

void setState(Null Function() param0) {}
