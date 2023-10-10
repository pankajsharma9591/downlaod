import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  _launchURL() async {
    const url = 'http://124.153.94.35:3030/Bonanza_API/CLSqlInterface.svc/DownloadFile?apikey=mEnpsshIYXIp1JXQlsKwRkGzXbnycSvsKPiEfbZLsW4=&Filename=CN_20230104_MN0U09306_MER.zip&dbyr=22-23'; // Replace this URL with the actual download link
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('File Download Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _launchURL,
            child: Text('Download File'),
          ),
        ),
      ),
    );
  }
}