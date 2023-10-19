import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../domain/fake/fake.dart';
import '../domain/post_model/post_model.dart';

/* GET METHOD */
Future<List<Fake>> fetchProductsFromFakeStoreApi() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products'),
  );
  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    final List<Fake> resultList = jsonData
        .map(
          (data) => Fake.fromJson(data),
        )
        .toList();
    return resultList;
  }

  return [];
}

/* POST METHOD */
Future<bool> postNewProductToFakeStoreApi({required PostModel newdata}) async {
  try {
    final response = await http.post(
      Uri.parse('https://fakestoreapi.com/products'),
      body: jsonEncode(
        newdata.toJson(),
      ),
    );
    if (response.statusCode == 200) {
      log('Post result successful');
      return true;
    } else {
      return false;
    }
  } catch (e) {
    log(
      e.toString(),
    );
    return false;
  }
}

/* PUT METHOD */
Future<bool> putUpdatedProductToFakeStoreApi(
    {required int id, required PostModel updatedData}) async {
  try {
    final response = await http.put(
      Uri.parse('https://fakestoreapi.com/products/$id'),
      body: jsonEncode(
        updatedData.toJson(),
      ),
    );
    if (response.statusCode == 200) {
      log('Put result successful');
      return true;
    } else {
      return false;
    }
  } catch (e) {
    log(
      e.toString(),
    );
    return false;
  }
}

/* PATCH METHOD */
Future<bool> patchProductOnFakeStoreApi(
    {required int id, required PostModel data}) async {
  try {
    final response =
        await http.patch(Uri.parse('https://fakestoreapi.com/products/$id'),
            // body: jsonEncode(data.toJson()),
            body: {});
    if (response.statusCode == 200) {
      log('Patch result successful');
      return true;
    } else {
      return false;
    }
  } catch (e) {
    log(
      e.toString(),
    );
    return false;
  }
}

/* DELETE METHOD */
Future<bool> deleteProductFromFakeStoreApi({required int id}) async {
  try {
    final response = await http.delete(
      Uri.parse('https://fakestoreapi.com/products/$id'),
    );
    if (response.statusCode == 200) {
      log('Delete result successful');
      return true;
    } else {
      return false;
    }
  } catch (e) {
    log(
      e.toString(),
    );
    return false;
  }
}
