import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerHelper {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickImage({required ImageSource source, BuildContext? context}) async {
    if (!(await _requestPermission(source))) {
      debugPrint("Permission denied");
      return null;
    }

    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile == null) return null;

      return await _cropImage(File(pickedFile.path), context);
    } catch (e) {
      debugPrint("Error picking image: $e");
      return null;
    }
  }

/*  Future<bool> _checkPermissions(ImageSource source) async {
    if (source == ImageSource.camera) {
      var status = await Permission.camera.request();
      return status.isGranted;
    } else {
      if (Platform.isAndroid) {
        if (await Permission.photos.isDenied) {
          await Permission.photos.request();
        }
        if (await Permission.storage.isDenied) {
          await Permission.storage.request();
        }
        return await Permission.photos.isGranted || await Permission.storage.isGranted;
      } else {
        var status = await Permission.photos.request();
        return status.isGranted;
      }
    }
  }*/
  Future _requestPermission(ImageSource source) async {
    final cameraPermission = await Permission.camera.request();
    final storagePermission = await Permission.storage.request();
    final photosPermission = await Permission.photos.request();
    Permission permission =
    source == ImageSource.camera ? Permission.camera : Permission.photos;

    if (cameraPermission.isGranted) {
      return true;
    } else if (storagePermission.isGranted || photosPermission.isGranted) {
      return true;
    } else if (cameraPermission.isDenied ||
        photosPermission.isDenied ||
        storagePermission.isDenied) {
      await openAppSettings();
      return false;
    } else {
      return await permission.request().isGranted;
    }
  }
  Future<File?> _cropImage(File imageFile, BuildContext? context) async {
    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: imageFile.path,

        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Colors.blue,
            toolbarWidgetColor: Colors.white,
            lockAspectRatio: false,
            aspectRatioPresets: [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9,
            ],
          ),
          IOSUiSettings(
            title: 'Crop Image',
            aspectRatioPresets: [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio4x3,

            ],
          ),
        ],
      );

      if (croppedFile == null) return null;
      return File(croppedFile.path);
    } catch (e) {
      debugPrint("Error cropping image: $e");
      return null;
    }
  }
}
