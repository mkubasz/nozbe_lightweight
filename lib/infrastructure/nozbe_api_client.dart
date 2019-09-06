import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:nozbe_lightweight/domain/model/task.dart';

class NozbeApiClient {
  // TODO move to production url.
  static const baseUrl = 'http://localhost:8888/v1';
  final http.Client httpClient;
  final Map<String, String> defaultHeaders = {'Authorization': 'Basic bTdzNXZmdTByNzhodHNpbzphNmQ4NGExNDBhMDFhNTFjZDU0YWE4ZGNjMjY1ZDBiOTEzMWEzOGYzNGIyNzFiYmIyZDMzZWIyNDk0NWQyY2Fk'};
  NozbeApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

//  Future<List<Task>> getAllTasks() async {
//    final locationUrl = '$baseUrl/buckets/nozbe/collections/tasks/records';
//    print("getALlTasks");
//    final locationResponse = await this.httpClient.get(locationUrl, headers: this.defaultHeaders);
//    print("getALlTasks2");
//    if (locationResponse.statusCode != 200) {
//      throw Exception('Could not fetch tasks.');
//      print("getALlTasks3");
//    }
//    print("getALlTasks4");
//
//    return jsonDecode(locationResponse.body) as List<Task>;
//
//  }

}