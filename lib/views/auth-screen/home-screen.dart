import 'package:flutter/material.dart';

class ExpendedClass extends StatelessWidget {
  ExpendedClass({super.key});

  List SenderName = [
    'Sadia khan',
    'ayesha',
    'noor',
    'rabia',
    'nadia',
    'azka',
    'momna',
    'javeriya',
    'quratulain',
    'aliya',
  ];
  List SubTitle = [
    'hello',
    'how are you',
    'Photo',
    'hii',
    'whats doing',
    'asalam',
    'Photo',
    'bye',
    'lactures',
    'hello',
  ];
  List Timeing = [
    '12:00AM',
    '3:00PM',
    '9:20AM',
    '11:00AM',
    '7:45PM',
    '1:23AM',
    '6:15PM',
    '2:10PM',
    '1:35AM',
    '4:56',
  ];
  List Profiles = [
    'assets/images/img1.jfif',
    'assets/images/img2.jfif',
    'assets/images/img3.jfif',
    'assets/images/image4.jfif',
    'assets/images/img5.jfif',
    'assets/images/img6.jfif',
    'assets/images/img7.jfif',
    'assets/images/img8.jfif',
    'assets/images/img9.jfif',
    'assets/images/image10.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whatsApp Clone'),
      ),
      body: Column(
        children: [
          // 1st expanded for top bar
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.green,
            ),
          ),
          // 2nd expanded for chats
          Expanded(
            flex: 80,
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: SenderName.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(Profiles[index]), // Fixed this part
                      ),
                      title: Text(SenderName[index]),
                      subtitle: Text(SubTitle[index]),
                      trailing: Text(Timeing[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          // 3rd expanded for bottom
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
