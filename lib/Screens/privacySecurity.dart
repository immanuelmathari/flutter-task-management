import 'package:flutter/material.dart';
import 'package:taskmanagement/Screens/password.dart';
import 'package:taskmanagement/components/upper_header.dart';
import 'package:taskmanagement/Screens/Settings.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context){
    // return const Placeholder();
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(left: he*0.03, right: he*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                upperHeader("Privacy and Security", context, false, page: const settingsPage()),
                SizedBox(height: he * 0.035),
                Text("Login and security", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey.shade600)),
                SizedBox(
                  height: he * 0.01,
                ),
                CustomOption("Passwords", Icons.lock, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChangePassword())
                  );
                }),
                CustomOption("My Account", Icons.account_circle, () {}),
                CustomOption("My Data", Icons.save_alt, () {}),

              ],
            )
          ),
        )
      )
    );
  }
}

Widget CustomOption(String text, IconData icon , onTap)
{
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.only(top: 13.0,),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black54,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.black45),
          ),
          Expanded(child: Container()),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black54,
            size: 20,
          )
        ]
      )
    )
  );
}