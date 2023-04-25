import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'மறைதிரு. ஜா. அமிர்தராச சுந்தர்',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('12/9 மின்வாரியக்குடியிருப்பு (விரிவு)'),
                    SizedBox(
                      height: 2,
                    ),
                    Text('மகாராசநகர் (PO)'),
                    SizedBox(
                      height: 2,
                    ),
                    Text('திருநெல்வேலி - 627011'),
                    SizedBox(
                      height: 2,
                    ),
                    Text('info.arulvakku@gmail.com'),
                    SizedBox(
                      height: 2,
                    ),
                    Text('+91-8300343466'),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
