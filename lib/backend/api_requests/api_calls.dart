import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ObtenerTokenCardCall {
  static Future<ApiCallResponse> call({
    String? publicKey = 'APP_USR-109871e3-2933-4951-bf22-7e375d8dbcd7',
    String? accessToken =
        'APP_USR-7285744591421420-091014-0b29084b59bb7a824578a3302d8db2fa-559822354',
    String? cardNumber = '',
    String? cardholderName = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? securityCode = '',
    int? cardExpirationMonth,
    int? cardExpirationYear,
  }) {
    final ffApiRequestBody = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    }
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Obtener Token Card',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tokenTarjeta(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic ultimosDigitos(dynamic response) => getJsonField(
        response,
        r'''$.last_four_digits''',
      );
}

class CrearPagoTarjetaCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'APP_USR-7285744591421420-091014-0b29084b59bb7a824578a3302d8db2fa-559822354',
    double? transactionAmount,
    String? token = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
  }) {
    final ffApiRequestBody = '''
{
  "transaction_amount": ${transactionAmount},
  "token": "${token}",
  "installments": 1,
  "payer": {
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "type": "customer",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    },
    "address": {
      "zip_code": "${zipCode}",
      "street_name": "${streetName}",
      "street_number": "${streetNumber}",
      "neighborhood": "${neighborhood}",
      "city": "${city}",
      "federal_unit": "${federalUnit}"
    }
  },
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear Pago Tarjeta',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic iDPago(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic fechaCreada(dynamic response) => getJsonField(
        response,
        r'''$.date_created''',
      );
  static dynamic fechaAprobada(dynamic response) => getJsonField(
        response,
        r'''$.date_approved''',
      );
  static dynamic tipoOperacion(dynamic response) => getJsonField(
        response,
        r'''$.operation_type''',
      );
  static dynamic tipoTarjeta(dynamic response) => getJsonField(
        response,
        r'''$.payment_method_id''',
      );
  static dynamic tipoPago(dynamic response) => getJsonField(
        response,
        r'''$.payment_type_id''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic moneda(dynamic response) => getJsonField(
        response,
        r'''$.currency_id''',
      );
  static dynamic descripcion(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic emailCliente(dynamic response) => getJsonField(
        response,
        r'''$.payer.email''',
      );
  static dynamic identificacion(dynamic response) => getJsonField(
        response,
        r'''$.payer.identification.type''',
      );
}

class ObtenerDatosPagosCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken =
        'APP_USR-7285744591421420-091014-0b29084b59bb7a824578a3302d8db2fa-559822354',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Obtener Datos Pagos',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
