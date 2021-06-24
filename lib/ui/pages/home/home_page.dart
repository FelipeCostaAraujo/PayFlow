import 'package:flutter/material.dart';
import 'package:payflow/data/models/models.dart';
import 'package:payflow/themes/themes.dart';
import 'package:payflow/ui/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = HomeController();
  final pages = [
    Container(color: Colors.red,),
    Container(color: Colors.blue,)
  ];

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
                Text(
                  "Olá, ",
                  style: TextStyles.titleRegular,
                ),
                Text("${widget.user.displayName}",
                    style: TextStyles.titleBoldBackground)
              ],
            ),
            subtitle: Text("Mantenha suas contas em dia",
                style: TextStyles.captionShape),
            trailing: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(widget.user.photoUrl!),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ),
      body: pages[_homeController.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _homeController.setPage(0);
                });
              },
              icon: Icon(Icons.home),
              color: Theme.of(context).primaryColor,
            ),
            GestureDetector(
              onTap: (){
                //
              },
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(Icons.add_box_outlined,color: Theme.of(context).backgroundColor,)
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _homeController.setPage(1);
                });
              },
              icon: Icon(Icons.description_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
