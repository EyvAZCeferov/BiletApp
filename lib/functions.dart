import 'package:permission_handler/permission_handler.dart';

void permissionHandler() async {
  var status = await Permission.camera.status;
  if (status.isDenied) {
    sendReg();
  }

  if (status.isPermanentlyDenied) {
    await openAppSettings();
  }

  if (status.isRestricted) {
    sendReg();
  }
}

void sendReg() async {
  await Permission.camera.request();
}

void permissionStorage() async {
  var status = await Permission.storage.status;
  if (status.isDenied) {
    sendStorage();
  }

  if (status.isPermanentlyDenied) {
    await openAppSettings();
  }

  if (status.isRestricted) {
    sendStorage();
  }
}

void sendStorage() async {
  await Permission.storage.request();
}

void permissionGallery() async {
  var status = await Permission.photos.status;
  if (status.isDenied) {
    sendGallery();
  }

  if (status.isPermanentlyDenied) {
    await openAppSettings();
  }

  if (status.isRestricted) {
    sendGallery();
  }
}

void sendGallery() async {
  await Permission.photos.request();
}
