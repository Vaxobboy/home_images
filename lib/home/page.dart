import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  String text = "Apple🍏";
  String img1 = "assets/images/channels4_profile.jpg";
  String img2 = "assets/images/69PRDI15980068090844_b.jpg";
  String img3 = "assets/images/apple-iphone-11.jpg";
  int sana=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text(
          "БРЕНД !",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Agbalumo",
            fontSize: 36,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: "Kenia", fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
            side: BorderSide(
              color: Colors.black,
              width: 3,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 2,
            ),
            Image.asset(
              img1,
              height: 110,
              width: 110,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 2,
            ),
            Image.asset(
              img2,
              height: 110,
              width: 110,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              height: 2,
            ),
            Image.asset(
              img3,
              height: 110,
              width: 110,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sana++;
            if(sana==3){
              sana=0;
            }
            img1=images1(sana);
            img2=images2(sana);
            img3=images3(sana);
            text=title(sana);
            
          });
        },
        child: const Icon(
          Icons.next_plan,
          size: 45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


String images1(int sana) {
  Map<int, String> image1 = {
    1: "assets/images/channels4_profile.jpg",
    2: "assets/images/69PRDI15980068090844_b.jpg",
    3: "assets/images/apple-iphone-11.jpg",
  };
  return image1[sana]!;
}

String images2(int sana){
  Map<int, String> image2={
    1:"assets/images/images (1).jpg",
    2:"assets/images/images (1).png",
    3:"assets/images/images (2).jpg",
  };
  return image2[sana]!;
}

String images3(int sana){
  Map<int,String> image3={
    1:"assets/images/images (4).jpg",
    2:"assets/images/rgZvsRaHgD0m3xTxrWG4Egxrn96nPyVg.jpg",
    3:"assets/images/Tesla_T_symbol.svg.png",
  };
  return image3[sana]!;
}



String title(int count){
  Map<int,String> nomi={
    1:"Apple",
    2:"Samsung",
    3:"Tesla & Disney",
 
  };
  return nomi[count]!;
}