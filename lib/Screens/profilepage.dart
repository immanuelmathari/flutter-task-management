import 'package:flutter/material.dart';
import 'package:taskmanagement/widgets/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03, top: he * 0.03, bottom: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // everythin we need
            children: [
              SizedBox(
                height: 10,
              ),
              Text('First Name', style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(
                height: he * 0.01,
              ),
              SizedBox(
                height: he * 0.045,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10, top: 12,),
                    hintText: 'Immanuel',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: MyThemeColor.textColor
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: MyThemeColor.textColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: MyThemeColor.textColor),
                    )
                  )
                )
              ),
              SizedBox(
                height: he * 0.02,
              ),
              Text('Last Name', style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              )),
              SizedBox(
                height: he * 0.01,
              ),
              SizedBox(
                height: he * 0.045,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10, top: 12),
                    hintText: "Mathari",
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: MyThemeColor.textColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: MyThemeColor.textColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: MyThemeColor.textColor)
                    ),
                  )
                ),
              ),
              SizedBox(
                height: 0.0001,
              ),
              Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              ),
              Row(
                  children: [
                    SizedBox(
                        height: he * 0.045,
                        width: he * 0.20,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                                hintText: 'Mathari Immanuel',
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                )
                            )
                        )
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text('Change User name', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.edit, color: Colors.blueAccent,size: 22)
                  ]
              ),
              SizedBox(
                height: 0.0001,
              ),
              Text(
                  'Phone Number',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              ),

              Row(
                  children: [
                    SizedBox(
                        height: he * 0.045,
                        width: he * 0.25,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                                hintText: '+254797952810',
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                )
                            )
                        )
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text('Change Number', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.edit, color: Colors.blueAccent,size: 22)
                  ]
              ),
              SizedBox(
                height: 0.0001,
              ),
              Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  )
              ),

              Row(
                  children: [
                    SizedBox(
                        height: he * 0.045,
                        width: he * 0.25,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                                hintText: 'immanuelmathari@gmail.com',
                                hintStyle: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: MyThemeColor.textColor),
                                )
                            )
                        )
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: Text('Change Email', style: TextStyle(color: Colors.blueAccent))
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,size: 22)
                  ]
              ),
              SizedBox(
                height: he * 0.01,
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 1,
              ),
              Row(
                children: [
                  Text(
                    'Add Account',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                    size: 21,
                  )
                ]
              ),
              SizedBox(
                height: he * 0.01,
              ),
              Row(
                children: [
                  Text(
                    'Switch Account',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blueAccent,
                    size: 21,
                  )
                ]
              ),
              SizedBox(
                height: he * 0.01,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  )
                )
              )
            ],
          )
        )
      )
    );
  }
}







