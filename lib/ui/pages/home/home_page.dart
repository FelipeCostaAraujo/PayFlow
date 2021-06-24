import 'package:flutter/material.dart';
import 'package:payflow/data/models/models.dart';
import 'package:payflow/themes/themes.dart';

class HomePage extends StatelessWidget {
  final UserModel user;
  const HomePage({Key? key,required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: Theme.of(context).primaryColor,
          child: ListTile(
            title: Row(
              children: [
                Text("Olá, ",style: TextStyles.titleRegular,),
                Text("${user.displayName}",style: TextStyles.titleBoldBackground)
              ],
            ),
            subtitle: Text("Mantenha suas contas em dia",style: TextStyles.captionShape),
            trailing: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                image:  new DecorationImage(
                  image: NetworkImage(user.photoUrl!),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
