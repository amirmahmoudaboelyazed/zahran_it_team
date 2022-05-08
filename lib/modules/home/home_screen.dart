import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../chat_screen/message_screen.dart';
import 'components/list_of_users.dart';
import 'components/my_space.dart';
import 'components/top_part.dart';
import 'cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                body: SafeArea(
                  child: Column(
                    children: [
                      mySpace(height: 10.0),
                      topPart(context),
                      mySpace(height: 10.0),
                      listOfUsersView(myContext: context,function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  Messages()));
                      }),
                    ],
                  ),
                ),
              );
            }));
  }
}
