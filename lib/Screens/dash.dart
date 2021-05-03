import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.lightbulb,
            color: Colors.red,
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Stack(children: [
            Container(margin: EdgeInsets.only(top: 5),
              height: 40,width: 40,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(left: 25,top: 5,
                child: CircleAvatar(
              radius: 7,
              backgroundColor: Colors.red,
              child: Center(
                child: Text('3',style: TextStyle(
                  color: Colors.white,fontSize: 10,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ))
          ],),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
        title: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              'Lucknow',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 5)),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: _buildBodyWidget(),
    );
  }

  _buildBodyWidget() {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 150,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("assets/top.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        height: 150,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("assets/top.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Container(
                        height: 150,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("assets/top.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Covid Cases',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.blue.shade800,
                    ),
                    Padding(padding: EdgeInsets.only(left: 3)),
                    Text(
                      'Location',
                      style:
                          TextStyle(fontSize: 18, color: Colors.blue.shade800),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Uttar Pradesh',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '942,511',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lucknow',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  '162,264',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.red),
                    color: Colors.red.shade50,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.shield,
                              color: Colors.red,
                              size: 40,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          '942,511',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Confirmed',
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green.shade50,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                              size: 40,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          '942,511',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Recovered',
                          style: TextStyle(color: Colors.green, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/grave.png")),
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          '942,511',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Death',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade800),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.person_add_alt_1_rounded,
                              color: Colors.blue.shade800,
                              size: 40,
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          '2,290,773',
                          style: TextStyle(
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Active',
                          style: TextStyle(
                              color: Colors.blue.shade800, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              'Our Service',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'We are providing all services ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/1.png",
                    scale: 7,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/2.png",
                    scale: 5,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/3.png",
                    scale: 7,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Covid Test Center',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Vaccine Center',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  child: Text(
                    'Dedicated Covid Hospiital',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/4.png",
                    scale: 7,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/5.png",
                    scale: 7,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue.shade50,
                  ),
                  child: Image.asset(
                    "assets/6.png",
                    scale: 7,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Appointment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                Container(
                  height: 20,
                  width: 50,
                  child: Text(
                    'Lab',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                Container(
                  height: 40,
                  width: 90,
                  child: Text(
                    'Consultation',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Stack(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: width,
                      color: Colors.blue.shade800,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recommended Specialists',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              'You are Find specialist',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: width,
                      color: Colors.grey.shade200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50, left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Find Doctors Near You',
                              style: TextStyle(
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Text(
                              'Select Preferred doctor',
                              style: TextStyle(
                                  //    color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                Positioned(
                  top: 60,
                  left: 40,
                  child: Container(
                    height: 80,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                  ),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 40)),
            Text(
              'Category List',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your doctor quickly',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue.shade50,
                  child: Image.asset(
                    "assets/7.png",
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.amber.shade50,
                  child: Image.asset(
                    "assets/8.png",
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.pink.shade50,
                  child: Image.asset(
                    "assets/9.png",
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.pink.shade50,
                  child: Image.asset(
                    "assets/10.png",
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'General Physicians',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ), //     Padding(padding: EdgeInsets.only(left: 10)),

                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Child Specialist',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ), // Padding(padding: EdgeInsets.only(left: 10)),

                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    "Women's Health",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Digestive Issue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.pink.shade50,
                  child: Image.asset(
                    "assets/11.png",
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red.shade50,
                  child: Image.asset(
                    "assets/12.png",
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.yellow.shade50,
                  child: Image.asset(
                    "assets/13.png",
                    scale: 15,
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue.shade50,
                  child: Image.asset(
                    "assets/14.png",
                    scale: 8,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Skin & Hair',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  child: Text(
                    'Heart Problem',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  height: 30,
                  width: 60,
                  child: Text(
                    'Loss of Sensation',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5)),
                Container(
                  height: 30,
                  width: 80,
                  child: Text(
                    'Teeth Problem',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Text(
              'Nearest Hospital',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your Nearest Hospital',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  child: Text(
                    'Kayra Hospital',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                  width: 100,
                  child: Text(
                    'Harsh Hospital',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 20,
                  width: 90,
                  child: Text(
                    'Health Care',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 1)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  child: Text(
                    'Indra Nagar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  height: 20,
                  width: 100,
                  child: Text(
                    'Gomti Nagar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
                Container(
                  height: 20,
                  width: 90,
                  child: Text(
                    'Hazratganj',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 20,
                  width: 90,
                  child: Text(
                    '25 Km',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
                CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.blue.shade800,
                    child: Center(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 12,
                      ),
                    )),
                Container(
                  height: 20,
                  width: 90,
                  child: Text(
                    '15 Km',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
                CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.blue.shade800,
                    child: Center(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 12,
                      ),
                    )),
                Container(
                  height: 20,
                  width: 90,
                  child: Text(
                    '45 Km',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ), //explore more
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
              height: 150,
              //  width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("assets/consult.png")),
              ),
              //child: Image.asset(),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              'Nearest Clinic',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your Nearest Hospital',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 100,
                  child: Card(
                    elevation: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.red,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 80,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nirvan Clinic',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Indra Nagar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        '25 Km',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 100,
                  child: Card(
                    elevation: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.red,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 80,
                  width: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Regency Super Special Clinic',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Khurram Nagar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        '5 Km',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 100,
                  child: Card(
                    elevation: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: Colors.red,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 80,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Indira IVF- Fertility Clinic',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Hazratganj',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        '10 Km',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 100,
                  child: Card(
                    color: Colors.deepPurple,
                    elevation: 5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepPurple,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 80,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Eye Q-Super Speciality',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Khurram Nagar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        '2 Km',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              'Popular Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your Best Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade800,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DR. SP Upadhyay',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                'FCPS - Child Health',
                                style: TextStyle(
                                  color: Colors.white, fontSize: 13,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 15)),
                              Text(
                                'Experience',
                                style: TextStyle(
                                  color: Colors.white, fontSize: 12,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                '8 Years',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                'Patients',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                '856',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade800,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DR. SP Upadhyay',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                'FCPS - Child Health',
                                style: TextStyle(
                                  color: Colors.white, fontSize: 13,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow.shade800,
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 15)),
                              Text(
                                'Experience',
                                style: TextStyle(
                                  color: Colors.white, fontSize: 12,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                '12 Years',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                'Patients',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                '1025',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Text(
              'Symptoms',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your Best Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue.shade50,
                            ),
                            child: Icon(
                              Icons.coronavirus_outlined,
                              color: Colors.blue,
                            )),
                        Center(
                          child: Text(
                            'Covid-19',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: Icon(
                              Icons.face_outlined,
                              color: Colors.blue,
                            )),
                        Center(
                          child: Text(
                            'Cough',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Center(
                          child: Text(
                            'Period Issue',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Center(
                          child: Text(
                            'Hair Fall',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Center(
                          child: Text(
                            'Acne',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Center(
                          child: Text(
                            'Weight Loss',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              margin: EdgeInsets.all(5),
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black12),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 260,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade800,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Best unexplored advantages',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                "of doctor's",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'appointment via online healthcare',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'service',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Container(
                        height: 100,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade800,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Best unexplored advantages',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                "of doctor's",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'appointment via online healthcare',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                              ),
                              Text(
                                'service',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),

            Text(
              'Health Feed',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'Find your Best Doctors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(padding: EdgeInsets.only(top: 35)),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 250,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black87,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 190),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Eat breakfast like king,lunch like a prince,and dinner like a pauper',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Container(
                        height: 250,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade800,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10, right: 10, bottom: 10, top: 190),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Eat breakfast like king,lunch like a prince,and dinner like a pauper',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35),
            ),
            Text(
              'Ask a free Questions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Text(
              'All Question Solution',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Padding(
              padding: EdgeInsets.only(top: 35),
            ),
            Container(
              height: 270,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 270,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 180,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.red,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Santosh Kumar',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text('27 year'),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 40)),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 20)),
                                  Text(
                                    'Fever a day after Covid-19?',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Text(
                                    'Lorem ipsum dolor skjhdk sjfjsh,jasbjmj shbmjs fasc,msjcn mahjsm cjbmschgmbc maschmbhc bsmdvhfmh gcbdbf vggush kfbjbmc mbasmc mygma.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 68,
                              child: Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          size: 20,
                                          color: Colors.blue.shade800,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 30)),
                                        Icon(
                                          Icons.thumb_down,
                                          size: 20,
                                          color: Colors.blue.shade800,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 80)),
                                        Text(
                                          'More Answers',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: [
                                        Text('857',
                                            style: TextStyle(
                                                color: Colors.blue.shade800,
                                                fontWeight: FontWeight.bold)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 30)),
                                        Text(
                                          '25',
                                          style: TextStyle(
                                              color: Colors.blue.shade800,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 80)),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.blue,
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.green,
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //width: 250,
                              color: Colors.blue.shade50,
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Container(
                        height: 270,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 180,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.red,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Santosh Kumar',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text('27 year'),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 40)),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 20)),
                                  Text(
                                    'Fever a day after Covid-19?',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10)),
                                  Text(
                                    'Lorem ipsum dolor skjhdk sjfjsh,jasbjmj shbmjs fasc,msjcn mahjsm cjbmschgmbc maschmbhc bsmdvhfmh gcbdbf vggush kfbjbmc mbasmc mygma.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 68,
                              child: Container(
                                margin: EdgeInsets.only(top: 10, left: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          size: 20,
                                          color: Colors.blue.shade800,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 30)),
                                        Icon(
                                          Icons.thumb_down,
                                          size: 20,
                                          color: Colors.blue.shade800,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 80)),
                                        Text(
                                          'More Answers',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      children: [
                                        Text('857',
                                            style: TextStyle(
                                                color: Colors.blue.shade800,
                                                fontWeight: FontWeight.bold)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 30)),
                                        Text(
                                          '25',
                                          style: TextStyle(
                                              color: Colors.blue.shade800,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(left: 80)),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.blue,
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.green,
                                        ),
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //width: 250,
                              color: Colors.blue.shade50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 65),
            ),
            Container(
              height: 220,
              width: double.infinity,
              child: Image.asset(
                "assets/bottom.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
