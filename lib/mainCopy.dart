import 'package:flutter/material.dart';


void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String ism = 'Ilyas';
  String yoz = "Asadbek'ni yurishi";
  String out = '';
  String out1 = '';
  String out2 = '';
  String out3 = '';
  String out4 = '';
  String out5 = '';
  String out6 = '';
  String out7 = '';
  String out8 = '';
  String out9 = '';
  int i =1;

  Widget Btn (String ox, int number){
    return FloatingActionButton.large(
        onPressed: (){
          press(number);
        },
        child:  Text(ox,
            style: const TextStyle(
                fontSize: 35,
                // fontFamily: LilithOne,
                color: Colors.black))
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffFEF7FF),
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.games),),
          title: const Text('Bekshax_Tik-Tak-Tok'
          ),
          actions: [
            IconButton(onPressed: (){},
                icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          // color: const Color(0xffF3FFC1),
                            height: 50,
                            width: 160,
                            decoration: const BoxDecoration(
                                color: Color(0xffF3FFC1),
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                            child: const Center(
                                child: Text('Asadbek: 0',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),)
                            )
                        ),
                        const SizedBox(width: 30),
                        Container(
                          // color: const Color(0xffF3FFC1),
                            height: 50,
                            width: 160,
                            decoration: const BoxDecoration(
                                color: Color(0xffD1C0FF),
                                borderRadius: BorderRadius.all(Radius.circular(100))
                            ),
                            child: const Center(
                                child: Text('Ilyas: 0',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),)
                            )
                        ),
                      ],
                    ),)
                ],
              ),
              const SizedBox(height: 67),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(yoz,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontStyle: FontStyle.italic,

                    ),)
                ],
              ),
              const SizedBox(height: 66),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Btn(out1, 1),
                  Btn(out2, 2),
                  Btn(out3, 3)
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Btn(out4, 4),
                  Btn(out5, 5),
                  Btn(out6, 6)
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Btn(out7, 7),
                  Btn(out8, 8),
                  Btn(out9, 9)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void press(int number){
    setState(() {
      yoz = ism + "'ni yurishi";
      if(i%2!=0){
        out = 'X';
        ism = 'Asadbek';
      }else {
        out = 'O';
        ism = 'Ilyas';
      }
      switch(number){
        case 1: out1 =out;
        break;
        case 2: out2 =out;
        break;
        case 3: out3 =out;
        break;
        case 4: out4 =out;
        break;
        case 5: out5 =out;
        break;
        case 6: out6 =out;
        break;
        case 7: out7 =out;
        break;
        case 8: out8 =out;
        break;
        case 9: out9 =out;
        break;
      }
      if((out1 == 'X' && out2 == 'X' && out3 == 'X') || (out4 == 'X' && out5 == 'X' && out6 == 'X')
      || (out7 == 'X' && out8 == 'X' && out9 == 'X') || (out1 == 'X' && out4 == 'X' && out7 == 'X')
      || (out2 == 'X' && out5 == 'X' && out8 == 'X') || (out3 == 'X' && out6 == 'X' && out9 == 'X')
      || (out1 == 'X' && out5 == 'X' && out9 == 'X') || (out3 == 'X' && out5 == 'X' && out7 == 'X')){
        yoz = 'Asadbek_Win!!!';
      } else if ((out1 == 'O' && out2 == 'O' && out3 == 'X') || (out4 == 'O' && out5 == 'O' && out6 == 'O')
          || (out7 == 'O' && out8 == 'O' && out9 == 'O') || (out1 == 'O' && out4 == 'O' && out7 == 'O')
          || (out2 == 'O' && out5 == 'O' && out8 == 'O') || (out3 == 'O' && out6 == 'O' && out9 == 'O')
          || (out1 == 'O' && out5 == 'O' && out9 == 'O') || (out3 == 'O' && out5 == 'O' && out7 == 'O')){
        yoz = "Ilyas_Win!!!";
      } else {
        yoz ='Durrang!!!';
      }
      i++;
    });
}
}


