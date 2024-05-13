import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/core/color.dart';
import 'package:travelapp/data/data.dart';

class HomePages extends StatefulWidget {
  String negeraSelected;
  var negaraList = negaraTravel;
  HomePages({super.key, this.negeraSelected = ""});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    print(widget.negeraSelected);
    print(negaraTravel["Singapura"]![0].name);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 40,
                padding: const EdgeInsets.all(5),
                color: SecondaryColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                      "https://i.pinimg.com/474x/9c/9f/5b/9c9f5b0d39c014d41be7dc3bed53cbea.jpg"),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            const Text(
              "Jelajah",
              style: styleJudul,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Jelajahi dunia yang tersembunyi!",
              style: styleSubtitle,
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                hintText: "Cari destinasi",
                hintStyle: TextStyle(color: Colors.grey.shade400),
                fillColor: const Color(0xFFF4F4F5),
                filled: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: SecondaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 20.0,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(children: [
                    GestureDetector(
                      onTap: () => setState(() => widget.negeraSelected = ''),
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: widget.negeraSelected == ''
                              ? SecondaryColor
                              : Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (widget.negeraSelected == '')
                      Container(
                        height: 3,
                        width: 20,
                        decoration: BoxDecoration(
                            color: SecondaryColor,
                            borderRadius: BorderRadius.circular(20)),
                      )
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  ...negara.map((e) => GestureDetector(
                      onTap: () => setState(() => widget.negeraSelected = e),
                      child: ListNegara(
                          negara: e, selectedNegara: widget.negeraSelected))),
                ],
              ),
            ),
            SizedBox(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: widget.negaraList[widget.negeraSelected]!
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: CardTravelCountry(
                            namaKota: e.location,
                            namaWisata: e.name,
                            gambarWisata: e.image,
                            lokasiWisata: e.location,
                            hargaWisata: e.price,
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardTravelCountry extends StatelessWidget {
  String namaKota, namaWisata, gambarWisata, lokasiWisata, hargaWisata;
  CardTravelCountry({
    super.key,
    required this.namaKota,
    required this.namaWisata,
    required this.gambarWisata,
    required this.lokasiWisata,
    required this.hargaWisata,
  });

  @override
  Widget build(BuildContext context) {
    print(namaKota);
    return Stack(
      children: [
        Container(
          width: 210,
          height: 270,
          child: Image.network(gambarWisata, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FittedBox(
                      child: Text(
                        "$namaWisata , $namaKota",
                        style: const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Text(
                      "Harga mulai, $hargaWisata",
                      style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey[200]!,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ListNegara extends StatelessWidget {
  String negara, selectedNegara;
  ListNegara({super.key, required this.negara, required this.selectedNegara});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(children: [
        Text(
          negara,
          style: TextStyle(
            color: selectedNegara == negara ? SecondaryColor : Colors.black,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        if (selectedNegara == negara)
          Container(
            height: 3,
            width: 20,
            decoration: BoxDecoration(
                color: SecondaryColor, borderRadius: BorderRadius.circular(20)),
          )
      ]),
    );
  }
}
