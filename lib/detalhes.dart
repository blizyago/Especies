import 'package:flutter/material.dart';
import 'cerrado.dart';

class DetalhesScreeen extends StatelessWidget {

  final Vegetacao vegetacao;

  const DetalhesScreeen({Key key, this.vegetacao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vegetacao.nome),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(vegetacao.imagem),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              vegetacao.nomeclat,style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Fitofisionomia ou Habitat", style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 16),

            ),
            SizedBox(
              height: 10,
            ),
            Text(
              vegetacao.habitat,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Distribuição", style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 16),

            ),
            SizedBox(
              height: 10,
            ),
            Text(
              vegetacao.distribuicao,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }


}