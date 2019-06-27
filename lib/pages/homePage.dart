import 'package:flutter/material.dart';
import 'package:nagasaki/models/spot.dart';
import 'package:nagasaki/widgets/spotCard.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
  final routeName = "homePage";

  final TextStyle _smallHeaderStyle = TextStyle(
    fontSize: 20,
    // fontWeight: FontWeight.bold,
  );

  // final List<Widget> topWidgets = [
  //   Padding(
  //     padding: const EdgeInsets.all(16),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           "Explore",
  //           style: TextStyle(
  //             fontSize: 30,
  //             fontWeight: FontWeight.bold,
  //           ),
  //         ),
  //         SizedBox(
  //           height: 8,
  //         ),
  //         Text(
  //           "The beautiful city of Nagasaki",
  //           style: TextStyle(
  //             fontSize: 18,
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // ];

  final List<Spot> _spots = [
    Spot(
      type: "sight",
      title: "Gotō Islands",
      description:
          "The Goto Islands, referred to as simply Goto or the Gotos by Nagasaki’s foreign population, consist of five main islands set atop the East China Sea. From southwest to northeast, they’re known as Fukue, Hisaka, Naru, Wakamatsu, and Nakadori. Its group name “Goto” literally means \"five islands.\"",
      image: "assets/gotoIsland.jpg",
      position: LatLng(32.695541, 128.838621),
    ),
    Spot(
      type: "sight",
      title: "Peace Statue",
      description:
          "Looking out over the Nagasaki Peace Park , the Nagasaki Peace Statue is not only stark reminder of the devastation that befell this city after the detonation of an atomic bomb during the final stages of World War II on August 9, 1945 but also a dedication to the victims of the atrocity.",
      image: "assets/peace-park.jpeg",
      position: LatLng(32.7769124, 129.8617559),
    ),
    Spot(
      type: "sight",
      title: "Nagasaki Atomic Bomb Museum",
      description:
          "The Nagasaki Atomic Bomb Museum is in the city of Nagasaki, Japan. The museum is a remembrance to the atomic bombing of Nagasaki by the United States of America 9 August 1945 at 11:02:35 am. Next to the museum is the Nagasaki National Peace Memorial Hall for the Atomic Bomb Victims, built in 2003.",
      image: "assets/atomicBombMuseum.jpg",
      position: LatLng(32.7725273, 129.8623764),
    ),
    Spot(
      type: "sight",
      title: "Oura Church",
      description:
          "The Basilica of the Twenty-Six Holy Martyrs of Japan also Ōura Church is a Roman Catholic minor basilica and Co-cathedral in Nagasaki, Japan, built soon after the end of the Japanese government's Seclusion Policy in 1853. It is also known as the Church of the 26 Japanese Martyrs.",
      image: "assets/church.jpg",
      position: LatLng(32.7341535, 129.8679432),
    ),
    Spot(
      type: "sight",
      title: "Spectacles Bridge",
      description:
          "Meganebashi or Spectacles Bridge, over the Nakashima River was built in Nagasaki in 1634 by the Chinese monk Mokusunyoujo who is a second generation of Chinese monks living at Kofukuji Temple.",
      image: "assets/glasses.jpg",
      position: LatLng(32.747146, 129.8779133),
    ),
    Spot(
      type: "sight",
      title: "Nagasaki Chinatown",
      description:
          "Nagasaki Chinatown is an area located in Nagasaki, Nagasaki, Japan. Today this area is a shopping strip covering many blocks. Most of the Chinese members of Nagasaki Chinatown are of Fuzhounese descent. Nagasaki and Fuzhou established ties as sister cities in 1980 to recognize the historical connections between the two cities and Fuzhounese immigrant community",
      image: "assets/china.jpg",
      position: LatLng(32.7414872, 129.8731198),
    ),
    Spot(
      type: "sight",
      title: "Huis Ten Bosch",
      description:
          "Huis Ten Bosch is a theme park in Sasebo, Nagasaki, Japan, which recreates the Netherlands by displaying life-sized copies of old Dutch buildings. The name Huis Ten Bosch translates into English as \"House at the Woods/bush\". It is named after Huis ten Bosch in The Hague, one of the three official residences of the Dutch Royal Family.",
      image: "assets/houseTembos.jpeg",
      position: LatLng(33.0857484, 129.7858569),
    ),
    Spot(
      type: "food",
      title: "Sasebo Burger",
      description:
          "While the U.S. may be known as home of the hamburger, there's also a burger named after a city in Japan. This style of hamburger was born in the city of Sasebo in Nagasaki Prefecture, and the Sasebo Burger is now famous throughout Japan. What's it like? That's actually a tricky question, because there are so many variants!",
      image: "assets/saseboBurger.jpg",
      position: LatLng(33.1731994, 129.7087184),
    ),
    Spot(
      type: "food",
      title: "Gotō Udon",
      description:
          "It is an udon noodle from the Goto Islands, especially Nakadori Island, one of the westernmost islands in Japan, which the locals have enjoyed for generations. Even among the Japanese, not many have experienced the silky, light, yet chewy texture that can only be made in the Goto Islands because these exclusive noodles are made from primary ingredients which are nurtured in the rich nature of the islands.",
      image: "assets/gotoUdon.jpg",
      position: LatLng(32.7427256, 129.8776411),
    ),
    Spot(
      type: "hotel",
      title: "Garden Terrace Nagasaki Hotel & Resort",
      description:
          """In a striking contemporary building with views of Nagasaki Bay, this upscale hotel is 3 km from Nagasaki train station and 4 km from Nagasaki Chinatown. 

Modern suites with terraces and Scandinavian-style furnishings offer free Wi-Fi and flat-screen TVs, plus minifridges, and tea and coffeemakers. Some rooms feature tatami floors and chabudai dining tables. Upgraded suites add plush decor and Nespresso machines; 1 has a balcony with a hot tub. Room service is available.""",
      image: "assets/gardenTelus.jpg",
      position: LatLng(32.7455858, 129.8511079),
      uri: "http://languages.gt-nagasaki.jp/?lang=en",
    ),
    Spot(
      type: "hotel",
      title: "Hotel Nagasaki",
      description:
          "Enjoy one of the world's three new greatest night views from your room. The private open-air bath is also very popular among our guests. Lip-smacking Nagasaki Nanban seafood cuisine!",
      image: "assets/hotelNagasaki.jpg",
      position: LatLng(32.7550048, 129.8583746),
      uri: "http://www.nshc.nagasaki.jp/en/hotelnagasaki/",
    ),
    Spot(
      type: "survanior",
      title: "Hasami porcelain",
      description:
          "Hasami porcelain is characterized by its beauty of pure white porcelain and the delicately painted decoration glazed with a blue pigment. The grace of openwork in a wickerwork design and mesh design is unique to Hasami porcelain. Originally it was produced for common people, and has cultivated a long tradition of beauty. ",
      image: "assets/hasami.jpeg",
      position: LatLng(33.141540, 129.910798),
    ),
    Spot(
      type: "survanior",
      title: "Castella cake",
      description:
          "Our castella cake is hand-mixed by experienced bakers,combining simple, carefully selected eggs, sugar, thick rice syrup, and flour to create this fragrant, delicious masterpiece. Even after mixing, some sugar crystals remain on the bottom of the cake for that special texture Fukusaya is famous for. Enjoy that delightful crunchy flavor at the bottom of each piece!",
      image: "assets/castela.jpeg",
      position: LatLng(32.7415648,129.879064),
      uri: "https://www.fukusaya.co.jp/",
    ),
    Spot(
      type: "food",
      title: "Champon Noodles",
      description:
          "Champon, also known as Chanpon, is a noodle dish that is a regional cuisine of Nagasaki, Japan. There are different versions in Japan, Korea and China. The dish was inspired by the cuisine of China. Champon is made by frying pork, seafood and vegetables with lard; a soup made with chicken and pig bones is then added.",
      image: "assets/champon.jpeg",
      position: LatLng(32.7365337,129.8675712),
      uri: "https://tabelog.com/en/nagasaki/A4201/A420101/42000053/#anchor-rd-detail",
    ),
    Spot(
      type: "food",
      title: "Shippoku",
      description:
          "Shippoku is a Japanese culinary style that is heavily influenced by Chinese cuisine. It has been described as a fusion cuisine and as a \"hybrid cuisine\" that combines elements of European, Chinese and Japanese cuisines. Meats used in shippoku cuisine include fowl, fish, and game meats.",
      image: "assets/shippoku.jpg",
      position: LatLng(32.7444584,129.8786781),
      uri: "http://yossou.co.jp/publics/translation/en/181/",
    ),
    // Spot(
    //   type: "",
    //   title: "",
    //   description:
    //       "",
    //   image: "assets/.jpg",
    //   position: LatLng(),
    // ),
    // Spot(
    //   type: "",
    //   title: "",
    //   description:
    //       "",
    //   image: "assets/.jpg",
    //   position: LatLng(),
    // ),
    // Spot(
    //   type: "",
    //   title: "",
    //   description:
    //       "",
    //   image: "assets/.jpg",
    //   position: LatLng(),
    // ),
  ];

  // final List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  //   const StaggeredTile.count(4, 2),
  //   const StaggeredTile.count(4, 2),
  //   const StaggeredTile.count(2, 3),
  //   const StaggeredTile.count(2, 3),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return topText(context);
              },
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      "Sights",
                      style: _smallHeaderStyle,
                    ),
                  );
                }
                final spots =
                    _spots.where((spot) => spot.type == "sight").toList();
                spots.shuffle();
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SpotCard(spots[index]);
                    },
                    itemCount: spots.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
              childCount: 2,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      "Foods",
                      style: _smallHeaderStyle,
                    ),
                  );
                }
                final spots =
                    _spots.where((spot) => spot.type == "food").toList();
                spots.shuffle();
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SpotCard(spots[index]);
                    },
                    itemCount: spots.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
              childCount: 2,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      "Hotels",
                      style: _smallHeaderStyle,
                    ),
                  );
                }
                final spots =
                    _spots.where((spot) => spot.type == "hotel").toList();
                spots.shuffle();
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SpotCard(spots[index]);
                    },
                    itemCount: spots.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
              childCount: 2,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      "Survaniors",
                      style: _smallHeaderStyle,
                    ),
                  );
                }
                final spots =
                    _spots.where((spot) => spot.type == "survanior").toList();
                spots.shuffle();
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SpotCard(spots[index]);
                    },
                    itemCount: spots.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
              childCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Padding topText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          bottom: 16,
          right: 16,
          top: 16 + MediaQuery.of(context).padding.top),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Explore",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "The beautiful city of Nagasaki",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
