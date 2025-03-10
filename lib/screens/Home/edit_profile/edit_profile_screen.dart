import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';

import '../../../core/common/DatePickerHelper.dart';
import '../../../core/common/ImagePickerHelper.dart';
import '../../../core/common/app_appbar.dart';
import '../../../core/common/app_profile_image.dart';
import '../../../core/constant/string_utility.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController tetDOB = TextEditingController();
  File? _selectedImage;
  final ImagePickerHelper _imagePickerHelper = ImagePickerHelper();

  void _showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Image Source"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _pickImage(ImageSource source) async {
    File? imageFile = await _imagePickerHelper.pickImage(source: source, context: context);
    if (imageFile != null) {
      setState(() {
        _selectedImage = imageFile;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        title: AppTextWidget(
          text: "Edit Profile",
          style: commonTextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        actions: [
          AppTextWidget(
            text: "Done",
            style: commonTextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Stack(
              children: [
                _selectedImage != null
                    ? Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1)),
                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(_selectedImage!,

                            height: 100, width: 100, fit: BoxFit.cover),
                      ),
                    )
                    : AppProfileImage(
                        height: 100,
                        width: 100,
                        imageUrl: dummyImageUrl,
                      ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: commonBoxDecoration(
                            shape: BoxShape.circle, color: colorBlueCircle),
                        child: Center(
                            child: IconButton(
                                onPressed: _showImagePickerDialog,
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )))))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AppTextWidget(
            textAlign: TextAlign.center,
            text: "Change Profile Photo",
            style: commonTextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: colorBlueCircle),
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            spacing: 15,
            children: [
              AppTextFieldWidget(
                hintText: 'Name',
                keyboardType: TextInputType.name,
              ),
              AppTextFieldWidget(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              AppTextFieldWidget(
                keyboardType: TextInputType.phone,
                hintText: 'Phone',
              ),
              AppTextFieldWidget(
                controller: tetDOB,
                suffixIcon: IconButton(
                    onPressed: () {
                      DatePickerHelper.selectDate(
                        context: context,
                        controller: tetDOB,
                      );
                    },
                    icon: Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                    )),
                hintText: 'Pick Birthday date',
                keyboardType: TextInputType.datetime,
              )
            ],
          )
        ],
      ),
    );
  }
}
