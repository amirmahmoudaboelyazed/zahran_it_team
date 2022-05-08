import 'package:flutter/material.dart';
import 'package:zahran_it_team/constants/colors.dart';
import 'package:zahran_it_team/modules/home/components/my_space.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  var messageController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  List messages = [];
  List reversedList = [];
  static  final  _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: MyColors.myWhiteBlue,
      ),
      body: Form(
        key: _formKey,
        child: Column(children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                reverse: true,
                itemBuilder: (context, index) {
                  return listOfMessage(reversedList[index]);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(
                      height: 15.0,
                    ),
                itemCount: reversedList.length,
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
                children: [
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: messageController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: MyColors.myWhiteBlue,
                                ),
                              ),

                              hintText: "type your message here ..."),
                        ),
                      )),
                  Container(
                    height: 50.0,
                    color: MyColors.myWhiteBlue,
                    child: MaterialButton(
                      onPressed: () {

                      },
                      minWidth: 1.0,
                      child: Icon(
                        Icons.send,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
         ),
          mySpace(height: 20.0)


        ],)
      ),
    );
  }



  Widget listOfMessage(message) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            )),
        child: Text(
          message,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
