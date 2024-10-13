import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_care_mea_project/Pages/Home/appoiment.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Your Medical AI',
        backgroundColor: const Color(0XFF252B61),
        child: Image.network(
            'https://res.cloudinary.com/dezwll9jv/image/upload/v1728809000/MCare/robotic_v4asig.png'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(247, 255, 255, 255),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(225, 247, 247, 225),
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            'https://res.cloudinary.com/dezwll9jv/image/upload/v1728801846/ojdydutjgs9ilxzqfzka.jpg',
                            height: 60,
                          ),
                          const Text(
                            'MCare',
                            style: TextStyle(
                                color: Color(0XFF252B61),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 248, 207, 0),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.monitor_heart_rounded,
                                        color: Color(0xff252b61)),
                                    Text(
                                      ' Medical AI',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff252b61)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _navLink('  Home  '),
                            _navLink('  Contact'),
                            _navLink('  About  '),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Hero
              Container(
                width: Get.width - 65,
                height: 350,
                decoration: BoxDecoration(
                  color: const Color(0XFF252B61),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Positioned(
                      top: 10,
                      child: Text(
                        'Healthcare',
                        style: TextStyle(
                            fontSize: 120,
                            color: Color(0xffb3d4ce),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.network(
                        'https://res.cloudinary.com/dezwll9jv/image/upload/v1728808238/Pngtree_photo_men_doctor_physician_chest_13143575_1_trrmmf.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Positioned(
                      bottom: 20, // Adjust the position as needed
                      child: SizedBox(
                        height: 100, // Set a specific height
                        width: Get.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 145),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Use center instead of stretch
                            children: [
                              const Text(
                                'Book your doctor\nappointment online',
                                style: TextStyle(color: Colors.white),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Text(
                                  'Book Consultation',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Services
              Container(
                padding: const EdgeInsets.all(20),
                width: Get.width - 35,
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const AppointmentForm());
                      },
                      child: const ServiceCard(
                        image:
                            'https://res.cloudinary.com/dezwll9jv/image/upload/v1728808583/MCare/BookAppoiment.png',
                        title: 'Take Appointments from Online',
                        subtitle: 'Confirmed appointments',
                        bgcolor: Color(0xfff0da69),
                      ),
                    ),
                    const ServiceCard(
                      image:
                          'https://res.cloudinary.com/dezwll9jv/image/upload/v1728808685/MCare/health_dj2he9.png',
                      title: 'Instant Video Consultation',
                      subtitle: 'Connect within 60 seconds',
                      bgcolor: Color(0xffa3dac2),
                    ),
                    const ServiceCard(
                      image:
                          'https://res.cloudinary.com/dezwll9jv/image/upload/v1728809799/MCare/medicine_yfdgyu.png',
                      title: '24/7 Medicines',
                      subtitle: 'Delivery your medicines at your doorstep',
                      bgcolor: Color(0xfff28DF6),
                    ),
                    const ServiceCard(
                      image:
                          'https://res.cloudinary.com/dezwll9jv/image/upload/v1728808892/MCare/blood-test_ncehxr.png',
                      title: 'Lab Tests',
                      subtitle: 'Sample pickup at your home',
                      bgcolor: Color(0xffeea69a),
                    ),
                    const ServiceCard(
                      image:
                          'https://res.cloudinary.com/dezwll9jv/image/upload/v1728808798/MCare/call-center-service_fdlhgr.png',
                      title: 'Emergency Services',
                      subtitle: 'Emergency actions and services guidelines',
                      bgcolor: Color(0xffeea69a),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color bgcolor;

  const ServiceCard(
      {super.key,
      required this.image,
      required this.bgcolor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SizedBox(
        height: 300,
        width: 250,
        child: Container(
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: const SizedBox(
                        height: 40,
                        width: 40,
                        child: Card(
                          color: Color(0xff252b61),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                    Image.network(
                      image,
                      height: 120,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PartnerImage extends StatelessWidget {
  final String imageUrl;

  const PartnerImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 40,
    );
  }
}

Widget _navLink(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 18),
  );
}
