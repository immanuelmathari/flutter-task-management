import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagement/Screens/MenuPage.dart';
import 'package:taskmanagement/components/customText.dart';
import 'package:taskmanagement/components/upper_header.dart';
import 'package:taskmanagement/widgets/constants.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
  bool isSwitched = true;
  // bool dardSwitched = false;
  bool isSound = true;
  @override
  Widget build(BuildContext context){
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he*0.03, right: he*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Setting", context, false, page: const menuPage()),
              SizedBox(
                height: he * 0.035,
              ),
              Container(
                padding: EdgeInsets.all(he * 0.003),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 208, 249, 1),
                      Color.fromARGB(255, 253, 170, 53),
                    ]
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                  ),
                  padding: EdgeInsets.all(he * 0.012),
                  child: Row(children: [
                    Container(
                      height: he*0.07,
                      width: he*0.07,
                      padding: EdgeInsets.all(he * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          const Color.fromARGB(255,224,224,224).withOpacity(0.6),BlendMode.srcATop
                        ),
                        child: Icon(
                          Icons.workspace_premium_outlined,
                          size: 30,
                          color: MyThemeColor.textColor,
                        ),
                      )
                    ),
                    SizedBox(
                      width: he * 0.015,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            customText('Tasks', 26),
                            SizedBox(
                              width: he * 0.005,
                            ),
                            const Icon(Icons.add,
                            size: 25,
                            color: Color.fromARGB(255, 141, 127, 65))
                          ],
                        ),
                        SizedBox(height: he * 0.0005),
                        const Text(
                          "Unloack our mose exclusive feature",
                          style: TextStyle(
                            fontSize: 14, color: MyThemeColor.textColor
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 22, 23, 22),
                      size: 20,
                    ),
                  ]),
                ),
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  if (isSound == true)
                    Icon(Icons.volume_up_outlined,
                    size: 25, color: MyThemeColor.textColor
                    )
                  else
                    Icon(Icons.volume_off_outlined,
                    size: 25, color: MyThemeColor.textColor),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  const Text(
                    "Sounds",
                    style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(value: isSound, onChanged: (bool value) {
                    setState(() {
                      isSound = value;
                    });
                  })
                ],
              ),
              SizedBox(
                height: he* 0.025,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacySecurity()
                    )
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.lock_open_outlined, size: 25, color: MyThemeColor.textColor),
                    SizedBox(width: he * 0.015),
                    const Text(
                      "Privacy & Security",
                      style: TextStyle(
                        fontSize: 10, color: MyThemeColor.textColor
                      ),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: he* 0.025,
              ),
              GestureDetector(
                onTap: () {},
                child: GestureDetector(onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.info_outline, size: 25, color: MyThemeColor.textColor),
                    SizedBox(width: he * 0.015,),
                    const Text("About App", style: TextStyle(fontSize: 18, color: MyThemeColor.textColor),),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
                ),

              ),
              SizedBox(
                height: he * 0.025,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.help_outline,
                    size: 25, color: MyThemeColor.textColor),
                    SizedBox(width: he * 0.015,),
                    const Text(
                      "Help and support",
                      style: TextStyle(
                        fontSize: 18, color: MyThemeColor.textColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: MyThemeColor.textColor,
                      size: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              SizedBox(
                height: he * 0.02,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Sign out",
                  style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
                ),
              ),
              SizedBox(
                height: he * 0.02,
              ),
              const Text(
                "VERSION:1.2.345",
                style: TextStyle(fontSize: 17, color: MyThemeColor.textColor),
              ),
            ],
          ),
        )
      )
    );
  }
}

value() {}