import 'package:dio/dio.dart';
import '../../../repository/dpi/api/apiModel.dart';

class ApiController {
  final String apiUrl = 'https://api.realestate.salonsyncs.com/graphql';

  Future<void> createDpiRate(CreateDpiRateInput DpiCreate) async {
    try {
      final response = await Dio().post(
        apiUrl,
        data: {
          'query': '''
            mutation DPI_Rate_Create(\$DpiCreate: CreateDpiRateInput!) {
              DPI_Rate_Create(createDpiRateInput: \$DpiCreate) {
                _id
              }
            }
          ''',
          'variables': {
            'DpiCreate': DpiCreate.toJson(),
          },
        },
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        print('hellow');
      } else {
        throw Exception('Failed to create DPI rate');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to create DPI rate: $e');
    }
  }
}
