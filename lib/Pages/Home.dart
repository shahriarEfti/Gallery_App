import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Widgets/CustomAppBar.dart';
import '../Widgets/Photo_Container.dart';
import '../DataFile/container_data.dart';

import 'gallery_album.dart';

late int itemCount;
late List<Map<String, String>> cards;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    cards = ContainerData.cards;
    itemCount = cards.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Expanded(
              child: SafeArea(
                child: OrientationBuilder(
                  builder: (BuildContext context, Orientation orientation) {
                    return gridViewBuilder(orientation);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget gridViewBuilder(Orientation orientation) {
    return GridView.builder(
        padding: const EdgeInsets.all(15.00),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (orientation == Orientation.portrait ? 2 : 4),
          mainAxisSpacing: 20,
          crossAxisSpacing: 25,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GalleryAlbum(index: index)));
            },
            child: PhotoContainer(cardData: cards[index]),
          );
        });
  }
}