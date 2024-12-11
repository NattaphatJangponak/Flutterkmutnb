import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 128, 197, 22)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/car_station.png',
                width: 50,
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/car_station.png',
                width: 150,
              ),
              const Text(
                'ขอบคุณที่ใช้บริการ',
                style: TextStyle(
                  fontFamily: 'Anuphan',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Text(
                'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                style: TextStyle(
                  fontFamily: 'Anuphan',
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // ขอบโค้ง
                ),
                margin: const EdgeInsets.all(16), // ระยะห่างรอบ Card
                child: const Padding(
                  padding: EdgeInsets.all(16.0), // ระยะห่างด้านใน Card
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 16),
                          Text(
                            'สรุปรายการละเอียดการชาร์จ',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'วันที่ชาร์จ',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '9 กันยายน 2566',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.ev_station,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'สถานีชาร์จ',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'PEA VOLTA บางจาก #1',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.power,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'ประเภทหัวชาร์จ',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'CCS2',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.access_time_filled,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'ระยะเวลาการชาร์จ',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '00:12:32',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.electric_bolt_sharp,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'จำนวนหน่วย',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '9.314 kWh',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'ค่าบริการรวมทั้งสิน',
                                style: TextStyle(
                                  fontFamily: 'Anuphan',
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '49.36 บาท',
                            style: TextStyle(
                              fontFamily: 'Anuphan',
                              fontSize: 16,
                              color: Colors.green,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.energy_savings_leaf)),
      ),
    );
  }
}



// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 198, 227, 9)),
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('App Bar'),
//         ),
//         body: Column(
//           children: [
//             const Text('Hello World'),
//             const Text('Cs App Kmutnb'),
//             ElevatedButton(
//               onPressed: () {
//                 // print('object');
//                 debugPrint('object debug');
//               },
//               child: const Text(
//                 'Submit',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }










// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 198, 227, 9)),
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('App Bar'),
//           leading: IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               debugPrint('Button pressed');
//             },
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.category),
//               onPressed: () {
//                 debugPrint('eiei pressed');
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.adb_outlined),
//               onPressed: () {
//                 debugPrint('eiei pressed');
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               const Text('Hello World'),
//               const SizedBox(
//                 height: 13,
//               ),
//               const Text('Cs App Kmutnb'),
//               Image.network(
//                 "https://cdn.pixabay.com/photo/2024/02/28/07/42/european-shorthair-8601492_640.jpg",
//                 width: 220,
//               ),
//               const SizedBox(
//                 height: 13,
//               ),
//               Image.asset(
//                 'assets/images/cat.jpg',
//                 width: 220,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   IconButton(
//                     icon: const Icon(
//                       Icons.favorite,
//                       size: 60,
//                       color: Colors.pinkAccent,
//                     ),
//                     onPressed: () {
//                       debugPrint('eiei pressed');
//                     },
//                   ),
//                   const Icon(
//                     Icons.heart_broken,
//                     size: 60,
//                     color: Colors.pinkAccent,
//                   ),
//                 ],
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   debugPrint('Button pressed');
//                 },
//                 child: const Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {}, child: const Icon(Icons.emoji_emotions_outlined)),
//       ),
//     );
//   }
// }
