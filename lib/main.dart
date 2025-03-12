import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Weather App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(child: ListView()),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'Yogyakarta',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '28°C',
                style: TextStyle(fontSize: 80, color: Colors.lightBlue),
              ),
              Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 50,
                endIndent: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Sunny',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit, color: Colors.blue, size: 24),
                    SizedBox(width: 10),
                    Text(
                      '5 Km/h',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 223, 223),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(31, 117, 117, 117),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250, bottom: 10),
                        child: Text(
                          'Next 7 days',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildWeatherColumn(
                            'Now',
                            Icons.ac_unit,
                            '28°C',
                            Icons.wind_power,
                            '10 km/h',
                            Icons.umbrella,
                            '0%',
                          ),
                          _buildWeatherColumn(
                            '17.00',
                            Icons.ac_unit,
                            '28°C',
                            Icons.wind_power,
                            '10 km/h',
                            Icons.umbrella,
                            '0%',
                          ),
                          _buildWeatherColumn(
                            '20.00',
                            Icons.ac_unit,
                            '28°C',
                            Icons.wind_power,
                            '10 km/h',
                            Icons.umbrella,
                            '0%',
                          ),
                          _buildWeatherColumn(
                            '23.00',
                            Icons.ac_unit,
                            '28°C',
                            Icons.wind_power,
                            '10 km/h',
                            Icons.umbrella,
                            '0%',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text('Develop by: DefarrelDanendraPraja.id'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeatherColumn(
    String time,
    IconData icon1,
    String temp,
    IconData icon2,
    String wind,
    IconData icon3,
    String humidity,
  ) {
    return Column(
      children: [
        Text(time),
        Icon(icon1, color: Colors.blue),
        Text(temp, style: TextStyle(color: Colors.blue)),
        Icon(icon2, color: Colors.pink),
        Text(wind, style: TextStyle(color: Colors.pink)),
        Icon(icon3, color: Colors.black),
        Text(humidity, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
