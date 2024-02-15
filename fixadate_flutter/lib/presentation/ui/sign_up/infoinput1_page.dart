import 'dart:math';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class InfoInput1Page extends StatefulWidget {
  final Map<String, dynamic> data;

  InfoInput1Page({required this.data});

  @override
  _InfoInput1PageState createState() => _InfoInput1PageState();
}

class _InfoInput1PageState extends State<InfoInput1Page> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _birthFieldControler = TextEditingController(text: "MM" + "                " + "DD" + "               " + "YYYY");
  TextEditingController _nicknameFieldController = TextEditingController();

  bool _isNameFocused = false;
  bool _isNicknameFocused = false;
  bool _isBirthFocused = false;

  String _nickname = '';
  String _name = '';
  DateTime dateTime = DateTime.now();
  String _birth = '';
  String _gender = '';
  bool _isMalePressed = true;
  bool _isFemalePressed = false;

  final initDate = DateFormat('yyyy-MM-dd').parse('1989-01-01');

  List<String> formattedMonth = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  Color focusedColor = Colors.blue;

  //PACKING MEMBERCREATE DTO (OAUTHID, OAUTHPLATFORM, NICKNAME, NAME, BIRTH, PROFESSION
  // Map<String, dynamic> submitForm() {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save(); // Save the form data
  //   } else {
  //     throw Stream.error("Form invalid");
  //   }
  //
  //   if (_isFemalePressed) {
  //     _gender = "Female";
  //   } else if (_isMalePressed) {
  //     _gender = "Male";
  //   }
  //
  //   return {
  //     "oauthId": widget.data["oauthId"],
  //     "oauthPlatform": widget.data["oauthPlatform"],
  //     "nickname" : _nickname,
  //     "name" : _name,
  //     "birth" : _birth,
  //     "gender" : _gender
  //   };
  // }

  // void _putRandNick() async {
  //   String randNick = await getRandNick();
  //   _nicknameFieldController.text = randNick;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.5),
              child: Column(
                children: [
                  Container(height: 125),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Register",
                        style: Theme.of(context).textTheme.headlineLarge
                      ),
                    ),
                  ),

                  Form(
                      // key: _formKey,
                      child: Column(
                          children: [
                            //NicknameInput
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: _isNicknameFocused ? focusedColor : Colors.white),
                                color: Colors.white
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10), //Where text Input starts
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {
                                      _isNicknameFocused = true;
                                      _isNameFocused = false;
                                      _isBirthFocused = false;
                                    });
                                  },
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),
                                  controller: _nicknameFieldController,

                                  // validator: (String? value) {
                                  //   if(value?.isEmpty == true) {
                                  //     return "빈 값일떄 문구";
                                  //   }
                                  //   if (value!.length > 17 || value!.length < 2) {
                                  //     return "범위 초과시 문구";
                                  //   }
                                  //   if (value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                                  //     return '특수 문자 포함시 문구';
                                  //   }
                                  //   if (value.contains(RegExp(
                                  //     r'[\u{1F600}-\u{1F64F}\u{1F300}-\u{1F5FF}\u{1F680}-\u{1F6FF}\u{1F700}-\u{1F77F}\u{1F780}-\u{1F7FF}\u{1F800}-\u{1F8FF}\u{1F900}-\u{1F9FF}\u{1FA00}-\u{1FA6F}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]',
                                  //     unicode: true,
                                  //   ))) {
                                  //     return '이모지 포함시 문구';
                                  //   }
                                  //
                                  // },
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: "닉네임을 입력해 주세요",
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isNicknameFocused = true;
                                            _isNameFocused = false;
                                            _isBirthFocused = false;
                                          });
                                          // _putRandNick();
                                        },
                                        icon: const Text(
                                            '\u{1F3B2}', // Unicode for the dice emoji
                                            style: TextStyle(fontSize: 20)
                                        )
                                    )
                                  ),
                                  onSaved: (value) {
                                    _nickname = value!;
                                  },
                                ),
                              )
                            ),

                            //Blank margin container
                            Container(
                              height: 20,
                            ),

                            //NameInput
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: _isNameFocused ? focusedColor : Colors.white), // Adjust the border color as needed
                                  color: Colors.white
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: TextFormField(
                                    onTap: () {
                                      setState(() {
                                        _isNicknameFocused = false;
                                        _isNameFocused = true;
                                        _isBirthFocused = false;
                                      });
                                    },
                                    // validator: (String? value) {
                                    //   if(value?.isEmpty == true) {
                                    //     return "빈 값일떄 문구";
                                    //   }
                                    //   if (value!.length > 17 || value!.length < 2) {
                                    //     return "범위 초과시 문구";
                                    //   }
                                    //   if (value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                                    //     return '특수 문자 포함시 문구';
                                    //   }
                                    //   if (value.contains(RegExp(
                                    //     r'[\u{1F600}-\u{1F64F}\u{1F300}-\u{1F5FF}\u{1F680}-\u{1F6FF}\u{1F700}-\u{1F77F}\u{1F780}-\u{1F7FF}\u{1F800}-\u{1F8FF}\u{1F900}-\u{1F9FF}\u{1FA00}-\u{1FA6F}\u{2600}-\u{26FF}\u{2700}-\u{27BF}]',
                                    //     unicode: true,
                                    //   ))) {
                                    //     return '이모지 포함시 문구';
                                    //   }
                                    // },
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),
                                    decoration: const InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "이름을 입력해 주세요",
                                    ),
                                    onSaved: (value) {
                                      _name = value!;
                                    }
                                ),
                              )
                            ),

                            //Blank margin container
                            Container(
                              height: 20,
                            ),

                            //BirthInput
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: _isBirthFocused ? focusedColor : Colors.white, // Set the top border color
                                    width: 0.5, // Set the top border width
                                  ),
                                  bottom: BorderSide(
                                    color: _isBirthFocused ? focusedColor : Colors.white, // Set the bottom border color
                                    width: 0.5, // Set the bottom border width
                                  ),
                                )
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                controller: _birthFieldControler,
                                decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                                readOnly: true,
                                onTap: () {
                                  setState(() {
                                    _isNicknameFocused = false;
                                    _isNameFocused = false;
                                    _isBirthFocused = true;
                                  });
                                  showModalBottomSheet(
                                      context: (context),

                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 330,
                                          // color: Colors.white,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent, // 모달 배경색
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(46), // 모달 전체 라운딩 처리

                                            )
                                          ),
                                            //CUPERTINODATEPICKER (FOLDING)
                                          child: Column(
                                            children: [
                                              SizedBox(height: 25),
                                              Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text("  "),
                                                    Container(
                                                      padding: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(17),
                                                        color: Colors.grey[300],
                                                      ),
                                                      child: Text(
                                                        "  Month  ",
                                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
                                                      ),
                                                    ),
                                                    Text("           "),
                                                    Container(
                                                      padding: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(17),
                                                        color: Colors.grey[300],
                                                      ),
                                                      child: Text(
                                                        "  Day  ",
                                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
                                                      ),
                                                    ),
                                                    Text("    "),
                                                    Container(
                                                      padding: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(17),
                                                        color: Colors.grey[300],
                                                      ),
                                                      child: Text(
                                                        "  Year  ",
                                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black54),
                                                      ),
                                                    ),
                                                  ],
                                              ),

                                              Expanded(
                                                  child: CupertinoDatePicker(
                                                    minimumYear: 1900,
                                                    maximumYear: 2024,
                                                    initialDateTime: initDate,
                                                    mode: CupertinoDatePickerMode.date,
                                                    onDateTimeChanged: (dateTime) {
                                                      String formattedDate = DateFormat('MM-dd-yyyy').format(dateTime);
                                                      //logger.i(formattedDate);
                                                      int month = int.parse(formattedDate.split("-")[0]);
                                                      logger.i(formattedMonth[month-1]);
                                                      formattedDate = formattedMonth[month-1] + "                " + formattedDate.split("-")[1] + "               " + formattedDate.split("-")[2];
                                                      _birthFieldControler.text = formattedDate;
                                                    },
                                                  ),
                                              ),
                                            ],
                                          )
                                        );
                                      }

                                  );
                                },
                                onSaved: (value)  {
                                  String strMonth = value!.substring(0, 3);
                                  int intMonth = formattedMonth.indexOf(strMonth) + 1;
                                  String month = intMonth.toString();
                                  if (month.length < 2) {
                                    month = "0" + month;
                                  }
                                  value = value!.replaceAll(" ", "");
                                  value = month + value.substring(3);
                                  _birth = value;
                                },

                              )
                            ),

                            Container(
                              height: 20,
                            ),


                            //GENDER BUTTON
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //MALE BUTTON
                                Expanded(
                                  flex: 41,
                                  child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the state of the button
                                          _isMalePressed = true;
                                          _isFemalePressed = false;

                                          _isNicknameFocused = false;
                                          _isNameFocused = false;
                                          _isBirthFocused = false;
                                        });
                                      },
                                      style: _isMalePressed
                                          ? ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(251, 42, 66, 1.0), // Change color when pressed
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          )
                                      )
                                          : ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          )
                                      ),
                                      child: Text(
                                        'Male',
                                        style: _isMalePressed
                                            ? Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline, decorationColor: Colors.white)
                                            : Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  )
                                ),

                                const Expanded(
                                  child: SizedBox(width: 25),
                                  flex: 8,
                                ),

                                //FEMALE BUTTON
                                Expanded(
                                  flex: 41,
                                  child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          // Toggle the state of the button
                                          _isFemalePressed = true;
                                          _isMalePressed = false;

                                          _isNicknameFocused = false;
                                          _isNameFocused = false;
                                          _isBirthFocused = false;
                                        });
                                      },
                                      style: _isFemalePressed
                                          ? ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(251, 42, 66, 1.0), // Change color when pressed
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        )
                                      )
                                          : ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        )
                                      ),
                                      child: Text(
                                        'Female',
                                        style: _isFemalePressed
                                            ? Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline, decorationColor: Colors.white)
                                            : Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  )
                                )
                              ],
                            ),

                            Container(
                              height: 40,
                            ),

                            //SUBMIT BUTTON
                            SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Map<String, dynamic> memberCreate = submitForm();
                                  // print(memberCreate);
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => InfoInput2Page(data : memberCreate)));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromRGBO(251, 42, 66, 1.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    )
                                ),
                                child: Text(
                                  'Next',
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 15),
                              ),
                            )
                            )
                          ]
                      )
                  )
                ],
              ),
            )
          )

        ),
      )
    );
  }
}