import 'package:flutter/material.dart';
import 'package:taskmanagement/Screens/MenuPage.dart';
import 'package:taskmanagement/components/customText.dart';
import 'package:taskmanagement/components/upper_header.dart';

class ContactUs extends StatelessWidget{
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            children: [
              upperHeader('Contact us', context, true, page: menuPage()),
              Container(
                height: he * 0.3,
                width: he * 0.35,
                child: Image.asset('assets/png.png')
              ),
              Text(
                "We are here to help you",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(
                height: he * 0.008,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: he * 0.03,
                    right: he * 0.03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: "Enter you name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                        )
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        )
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Message',
                          hintText: 'Enter your message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                        )
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: he * 0.06,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Send"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                          )
                        )
                      )
                    ]
                  )
                )
              )
            ],
          )
        ),
      ),
    );
  }
}