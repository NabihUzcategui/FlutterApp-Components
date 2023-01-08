import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [

          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Esse Lorem aliqua sunt laboris do labore. Adipisicing labore et deserunt dolor laborum excepteur. Ea nisi cillum sint elit ad id sint Lorem amet Lorem pariatur. Ex quis ea irure ad. Incididunt ut aliquip aliqua fugiat quis fugiat cillum magna. Fugiat labore tempor amet nulla sint occaecat.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),

                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                ),
              ],



            ),
          )


        ],
      ),
    );
  }
}