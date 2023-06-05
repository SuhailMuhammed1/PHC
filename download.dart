import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
// import 'package:dio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;
// import 'package:travel/layout/login.dart';
// import 'package:untitled/layout/login.dart';

class download extends StatefulWidget {
  const download({ Key? key }) : super(key: key);
  static var name="";

  @override
  _downloadState createState() => _downloadState();
}

class _downloadState extends State<download> {
  String _progress = "-";
  // final String _fileUrl = login.url+'static/'+download.name;
  final String _fileUrl = download.name;
  final String _fileName=download.name;

  Future<String> _getDownloadDirectory() async {
    // if (Platform.isAndroid) {
    //   return await DownloadsPathProvider.downloadsDirectory;
    // }

    // // in this example we are using only Android and iOS so I can assume
    // // that you are not trying it for other platforms and the if statement
    // // for iOS is unnecessary

    // // iOS directory visible to user
    // return await getApplicationDocumentsDirectory();
    return '/storage/emulated/0/Download';
  }
  Future<bool> _requestPermissions() async {
    var permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);

    if (permission != PermissionStatus.granted) {
      await PermissionHandler().requestPermissions([PermissionGroup.storage]);
      permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
    }

    return permission == PermissionStatus.granted;
  }

  Future<void> _download() async {
    print("hello");
    // print(download.name);
    final dir = await _getDownloadDirectory();
    String fileName = download.name.substring(_fileUrl.lastIndexOf("/") + 1);

    print(fileName);
    final isPermissionStatusGranted = await _requestPermissions();

    if (isPermissionStatusGranted) {
      final savePath = path.join(dir, _fileName);
      await _startDownload(savePath);
    } else {
      // handle the scenario when user declines the permissions
    }
  }
  final Dio _dio = Dio();

  Future<void> _startDownload(String savePath) async {

    final response = await _dio.download(
        download.name,
        savePath,
        onReceiveProgress: _onReceiveProgress
    );
  }
  void _onReceiveProgress(int received, int total) {
    if (total != -1) {
      setState(() {
        _progress = (received / total * 100).toStringAsFixed(0) + "%";
      });
    }
  }
  // final response = await _dio.download(
  //   _fileUrl,
  //   savePath,
  //   onReceiveProgress: _onReceiveProgress
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Download Lab Report",
          style: new TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Download File to Downloads :',
            ),
            Text('$_progress'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _download,
        tooltip: 'Download',
        child: Icon(Icons.file_download),
      ),

    );
  }
}