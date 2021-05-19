import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guia_de_campo/cerrado.dart';
import 'detalhes.dart';

class HomeScreen extends StatelessWidget {
  
  final matinhos =[
    Vegetacao("assets/gomphrena.PNG",
        "Gomphrena scapigera",
        "AMARANTHACEAE",
        "Cerrado , Campo Sujo , Campo Rupestre",
        " BA e MG; Local da foto: Parque Estadual do Biribiri - Serra do Espinhaço - Diamantina - MG."),

    Vegetacao("assets/caju.PNG",
        "Anacardium humile",
        "Cajuí",
        "Cerradão, Cerrado , Campo Sujo, Campo Rupestre",
        " TO, RO, PI, BA, MT, GO,DF, MS, MG, SP, PR; Local da foto: Jardim Botânico de Brasília - Brasília – DF"),
    Vegetacao("assets/cajueiro.PNG",
        "Anacardium occidentale",
        "Cajueiro",
        "Mata Ciliar, Cerradão, Cerrado, Campo Sujo, Savanas Amazônicas",
        " RR, AP, PA, AM, TO, AC, MA, PI, CE, RN, PB, PE, BA, AL, SE, MT, GO, DF, MG, ES, SP, RJ, PR, SC; Local da foto:"
            " RPPN Fazenda Vaga-Fogo – Pirenópolis - GO."),
    Vegetacao("assets/aroeira.PNG",
        "Lithrea molleoides",
        "Aroeira",
        "Seca Semidecídua, Transição com Cerrado",
        "BA, MT, GO, DF, MS, MG, SP, PR, SC, RS; Local da foto: Parque Olhos D’Água - Brasília - DF."),
    Vegetacao("assets/camboata.PNG",
        "Tapirira guianensis",
        "Camboatá, Paupombo",
        "Mata ciliar, mata de galeria, mata seca semidecídua, cerradão, cerrado denso, vereda, savanas amazônicas",
        "PA, AM, TO, AC, RO, MA, PI, CE, RN, PB, PE, BA, AL, SE, MT, GO, DF, MS, MG, ES, SP, RJ, PR, SC; Local da foto: "
            "Parque Olhos D’Água - Brasília - DF."),
    Vegetacao('assets/araticum.png',
        "Annona crassiflora",
       " Pinha do cerrado",
        "Mata de Galeria, Cerradão, Cerrado, Vereda",
        ": PA, TO, MA, BA, MT, GO, DF, MS, MG, SP, PR; Local da foto: APA do Planalto Central - Brasília - DF"),
    Vegetacao("assets/pindaiba.PNG",
        "Cardiopetalum calophyllum",
        "Pindaíbavermelha, embira",
        "Mata de Galeria, Cerradão, Cerrado, Campo Sujo",
        "PA, AM, TO, AC, RO, PI, RN, MT, GO, DF, MG; Local da foto: Parque Estadual da Serra dos Pirineus - Pirenópolis - GO."),
    Vegetacao("assets/marolo.PNG",
        "Duguetia fufuracea",
        "Marolo",
        ": Borda de Mata de Galeria, Cerradão, Cerrado, Carrasco",
        "RO, CE, PE, BA, MT, GO, DF, MS, MG, SP, RJ, PR; Local da foto: Parque Nacional de Brasília - Brasília – DF."),
    Vegetacao("assets/pimentaM.PNG",
        "Xylopia aromatica",
        "Pimenta de macaco",
        "Mata Ciliar, Mata Seca, Cerradão, Cerrado, Vereda, Savanas amazônicas",
        "RR, AP, PA, AM, TO, RO,MA, PI, BA, MT, GO, DF, MS, MG, SP, PR; Local da foto: APA do Planalto Central - Brasília - DF."),
    Vegetacao("assets/alamanda.PNG",
        "Allamanda angustifolia",
        "Alamanda",
        "Cerrado ralo, campo sujo, campo limpo, campo rupestre",
        ": GO; Local da foto: Parque Nacional Chapada dos Veadeiros - Cavalcante – GO."),

  ];
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Guia de Vegetação do Cerrado"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(9),
            children: <Widget>[
              GestureDetector(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        matinhos[0].imagem,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[0].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[0].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                 ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesScreeen(
                            vegetacao: matinhos[0]),
                      ),
                    );
                  },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[1].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[1].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[1].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[1]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[2].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[2].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[2].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[2]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[3].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[3].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[3].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[3]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[4].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[4].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[4].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[4]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[5].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[5].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[5].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[5]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[6].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[6].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[6].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[6]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[7].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[7].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[7].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[7]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[8].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[8].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[8].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[8]),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        matinhos[9].imagem,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Nome Cientifico", style:
                        TextStyle(fontWeight: FontWeight.bold)
                          ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[9].nome),

                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text("Nomeclatura", style:
                            TextStyle(fontWeight: FontWeight.bold)
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(matinhos[9].nomeclat),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesScreeen(
                          vegetacao: matinhos[9]),
                    ),
                  );
                },
              ),
            ],
          ),
          ),

        );
  }


}