import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'dart:io';
import 'dart:async';

class CompressorUtils {

  static Future<File> testCompressAndGetFile(File file, String targetPath) async {
    var result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path, targetPath,
        quality: 50);
    result.length().then((length) {
    });

    return result;
  }

  static Future<List<int>> testCompressAsset(String assetName) async {
    var list = await FlutterImageCompress.compressAssetImage(
      assetName,
      minHeight: 1920,
      minWidth: 1080,
      quality: 96,
    );

    return list;
  }

  static Future<List<int>> testCompressList(List<int> list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      minHeight: 1920,
      minWidth: 1080,
      quality: 96,
    );
    print(list.length);
    print(result.length);
    return result;
  }
}