import 'package:flutter/material.dart';

class Myflow extends StatefulWidget {
  final String departureCity;
  final String arrivalCity;
  final String departureDate;
  final String travellers;
  const Myflow(
      {super.key,
      required this.departureCity,
      required this.arrivalCity,
      required this.departureDate,
      required this.travellers});

  @override
  State<Myflow> createState() => MyflowState();
}

class MyflowState extends State<Myflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width * 0.6,
            elevation: 0,
            snap: true,
            floating: true,
            stretch: true,
            backgroundColor: Colors.grey.shade50,
            flexibleSpace: FlexibleSpaceBar(
                // ignore: prefer_const_literals_to_create_immutables
                stretchModes: [
                  StretchMode.zoomBackground,
                ],
                background: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                  image: AssetImage('assets/images/sky.jpg'),
                )))),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(45),
                child: Transform.translate(
                  offset: const Offset(0, 1),
                  child: Container(
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                        child: Container(
                      width: 50,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                  ),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Departure City: ${widget.departureCity}',
                            style: const TextStyle(fontSize: 20.0),
                          ),
                          Text('Arrival City: ${widget.arrivalCity}'),
                          Text('DepartureDate: ${widget.departureDate}'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              'No_ofTravellers: ${widget.travellers.toString()}'),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              foregroundDecoration: BoxDecoration(
                                  // how do i add a rounded border to a container
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/arik.jpeg'))),
                              height: 90,
                              width: 90,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade300)),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/aero.png'))),
                            height: 90,
                            width: 90,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              foregroundDecoration: BoxDecoration(

                                  // how do i add a rounded border to a container
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/british.png'))),
                              height: 90,
                              width: 90,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade300)),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/airpeace.png'))),
                            height: 90,
                            width: 90,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              foregroundDecoration: BoxDecoration(
                                  // how do i add a rounded border to a container
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/dana.jpeg'))),
                              height: 90,
                              width: 90,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade300)),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/value.png'))),
                              height: 90,
                              width: 90,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
