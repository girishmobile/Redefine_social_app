import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              spacing: 10,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: commonBoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextWidget(
                        text: "Girish Nariwala",
                        style: commonTextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      AppTextWidget(
                        text: "girish_nari",
                        style: commonTextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              commonColView(),
              commonColView(title: "Friends", value: "200"),
              commonColView(title: "Groups", value: "5"),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          commonDivider(),
          commonListTile(onTap: (){

            Navigator.pushNamed(context, RouteName.editProfile);
          }),
          commonDivider(),
          commonListTile(title: "QR Code",icon: Icons.qr_code),
          commonDivider(),
          commonListTile(title: "Order and Payments",icon: Icons.credit_card_sharp),
          commonDivider(),
          commonListTile(title: "Setting",icon: Icons.settings),
          commonDivider(),

        ],
      ),
    );
  }

  commonColView({String? title, String? value}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppTextWidget(
          text: value ?? "20",
          style: commonTextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        AppTextWidget(
          text: title ?? "Events",
          style: commonTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  commonListTile({String? title, IconData? icon, void Function()? onTap }) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.only(left: 10,right: 10),
      leading: Icon(
        icon?? Icons.edit_outlined,
        color: Colors.black,
        size: 30,
      ),
      title: AppTextWidget(
        text:title?? "Edit Profile",
        style: commonTextStyle(fontWeight: FontWeight.w600),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
