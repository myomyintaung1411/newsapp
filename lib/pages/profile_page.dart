import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void getHttp() async {
    try {
      // Response response = await Dio().get("http://10.0.2.2:8080/v1/book");
      Response response =
          await Dio().get("http://192.168.0.106:3000/article/getallarticle");
      // var result = response.data;
      print(response);
      print(response.data[0]['info']['caption']);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getHttp();
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
