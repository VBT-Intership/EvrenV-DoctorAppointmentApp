import 'package:flutter/material.dart';

import 'package:flutter_profile/core/theme/my_colors.dart';
import 'package:flutter_profile/core/widgets/list_card_widget.dart';
import 'package:flutter_profile/core/widgets/specification_card_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildMainColumn(context),
    );
  }

  Column buildMainColumn(context) {
    return Column(
      children: <Widget>[
        Flexible(flex: 5, child: buildTopMainContainer(context)),
        Flexible(flex: 6, child: buildBotMainContainer(context))
      ],
    );
  }

  Container buildBotMainContainer(context) {
    return Container(
      color: MyColors.WHITE,
      child: buildBotMainRow(context),
    );
  }

  Row buildBotMainRow(context) {
    return Row(
      children: <Widget>[
        Spacer(flex: 1),
        Flexible(flex: 12, child: buildBotMainColumn(context)),
        Spacer(flex: 1)
      ],
    );
  }

  Column buildBotMainColumn(context) {
    return Column(
      children: <Widget>[
        Flexible(flex: 6, child: buildMainContent(context)),
        Flexible(flex: 1, child: buildBookAppointmentButton(context))
      ],
    );
  }

  ButtonTheme buildBookAppointmentButton(context) {
    return ButtonTheme(
      minWidth: 400.0,
      height: 45.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        color: MyColors.GREEN,
        child: Text(
          "Book Appointment",
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(color: MyColors.DARK_WHITE),
          maxLines: 1,
        ),
        onPressed: () {
          print("Clicked");
        },
      ),
    );
  }

  Column buildMainContent(context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 17),
        Align(
          alignment: Alignment.topLeft,
          child: Text("About Doctor",
              style: Theme.of(context).textTheme.headline2),
        ),
        SizedBox(height: 7),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.",
              style: Theme.of(context).textTheme.bodyText1),
        ),
        SizedBox(height: 17),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Working Time",
              style: Theme.of(context).textTheme.headline2),
        ),
        SizedBox(height: 7),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Mon - Sat (08.30 AM - 09.00 PM)",
              style: Theme.of(context).textTheme.bodyText1),
        ),
        SizedBox(height: 17),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Communication",
              style: Theme.of(context).textTheme.headline2),
        ),
        SizedBox(height: 7),
        buildCommunicationInfos()
      ],
    );
  }

  Align buildCommunicationInfos() {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          ListCardWidget(
            icon: Icons.message,
            iconBgColor: MyColors.PINK,
            iconColor: MyColors.RED,
            title: "Message",
            subTitle: "Chat me up share photos.",
          ),
          ListCardWidget(
            icon: Icons.phone,
            iconBgColor: MyColors.TURQUOISE,
            iconColor: MyColors.DARK_TURQUOISE,
            title: "Audio Call",
            subTitle: "Call your doctor directly",
          ),
        ],
      ),
    );
  }

  Container buildTopMainContainer(context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.DARK_WHITE,
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(40.0),
          bottomRight: const Radius.circular(40.0),
        ),
      ),
      child: buildTopMainContainerRow(context),
    );
  }

  Row buildTopMainContainerRow(context) {
    return Row(
      children: <Widget>[
        Spacer(flex: 1),
        Flexible(
          flex: 12,
          child: buildTopMainContainerColumn(context),
        ),
        Spacer(flex: 1),
      ],
    );
  }

  Column buildTopMainContainerColumn(context) {
    return Column(
      children: <Widget>[
        Flexible(flex: 13, child: buildProfileInformation(context)),
        Flexible(flex: 8, child: buildSpecifications()),
        Spacer(flex: 1)
      ],
    );
  }

  Row buildSpecifications() {
    return Row(
      children: <Widget>[
        Flexible(flex: 10, child: buildSpecificationPatient()),
        Spacer(flex: 1),
        Flexible(flex: 10, child: buildSpecificationExperience()),
        Spacer(flex: 1),
        Flexible(flex: 10, child: buildSpecificationRating()),
      ],
    );
  }

  SpecificationCardWidget buildSpecificationRating() {
    return SpecificationCardWidget(
      brandColor: MyColors.ORANGE,
      icon: Icons.star_border,
      iconColor: MyColors.DARK_ORANGE,
      title: "4.5",
      subTitle: "Ratings",
    );
  }

  SpecificationCardWidget buildSpecificationExperience() {
    return SpecificationCardWidget(
      brandColor: MyColors.PINK,
      icon: Icons.beenhere,
      iconColor: MyColors.RED,
      title: "10 Yrs",
      subTitle: "Exprience",
    );
  }

  SpecificationCardWidget buildSpecificationPatient() {
    return SpecificationCardWidget(
      brandColor: MyColors.TURQUOISE,
      icon: Icons.people_outline,
      iconColor: MyColors.DARK_TURQUOISE,
      title: "1000+",
      subTitle: "Patients",
    );
  }

  Center buildProfileInformation(context) {
    return Center(
      child: Column(
        children: <Widget>[
          buildCircleAvatar(),
          buildNameText(context),
          buildJobText(),
        ],
      ),
    );
  }

  Text buildJobText() => Text("Doctor");

  Padding buildNameText(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23, bottom: 12),
      child: Text(
        "Evren Vural",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Card buildCircleAvatar() {
    return Card(
      elevation: 14.0,
      shape: CircleBorder(side: BorderSide(width: 3, color: Color(0xffe3dcd7))),
      child: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('lib/core/assets/my_profile_photo.jpeg')),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: buildBackButton(),
      actions: <Widget>[buildOptionsButton()],
    );
  }

  IconButton buildOptionsButton() {
    return IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {
        print("Option button clicked");
      },
    );
  }

  IconButton buildBackButton() {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        print("Back button clicked");
      },
    );
  }
}

