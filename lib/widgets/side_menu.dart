import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/app_logo.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> _sideMenuList = [
      'Profile',
      'Details',
      'About',
      'Log Out',
    ];

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 80.0,
              ),
              child: AppLogo(
                fontSize: 40.0,
                padding: 1.0,
                color: Colors.white,
              ),
            ),
            Container(
              height: 480.0,
              child: ListView.builder(
                itemCount: _sideMenuList.length,
                itemBuilder: (BuildContext context, int index) {
                  String _menuTitle = _sideMenuList[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0,
                    ),
                    child: ListTile(
                      title: Center(
                        child: Text(
                          _menuTitle,
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.arrow_back_outlined,
                size: 35.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
