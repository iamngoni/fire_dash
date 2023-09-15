//
//  fire_dash
//  error_code
//
//  Created by Ngonidzashe Mangudya on 15/09/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

enum ErrorCode {
  // General Errors
  badRequest(400, 'Bad Request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not Found'),
  methodNotAllowed(405, 'Method Not Allowed'),
  internalServerError(500, 'Internal Server Error'),

  // Validation Errors
  unprocessableEntity(422, 'Unprocessable Entity'),
  invalidInputFormat(4001, 'Invalid Input Format'),
  missingRequiredField(4002, 'Missing Required Field'),
  valueOutOfRange(4003, 'Value Out of Range'),
  duplicateEntry(4004, 'Duplicate Entry'),

  // Authentication and Authorization Errors
  invalidCredentials(4011, 'Invalid Credentials'),
  tokenExpired(4012, 'Token Expired'),
  insufficientPermissions(4031, 'Insufficient Permissions'),

  // Database Errors
  databaseConnectionError(5001, 'Database Connection Error'),
  databaseQueryFailed(5002, 'Database Query Failed'),
  recordNotFound(5003, 'Record Not Found'),
  dataIntegrityViolation(5004, 'Data Integrity Violation'),

  // File Handling Errors
  fileNotFound(6001, 'File Not Found'),
  fileUploadError(6002, 'File Upload Error'),
  fileSizeExceeded(6003, 'File Size Exceeded'),

  // Network and Communication Errors
  networkTimeout(7001, 'Network Timeout'),
  dnsResolutionFailed(7002, 'DNS Resolution Failed'),
  connectionRefused(7003, 'Connection Refused'),

  // Service and API Errors
  externalServiceUnavailable(8001, 'External Service Unavailable'),
  invalidApiKey(8002, 'Invalid API Key'),
  rateLimitExceeded(8003, 'Rate Limit Exceeded'),

  // Security Errors
  xssAttackDetected(9001, 'Cross-Site Scripting (XSS) Attack Detected'),
  sqlInjectionAttempt(9002, 'SQL Injection Attempt'),

  // Custom Application Errors
  unknownError(10001, 'Unknown Error');

  const ErrorCode(this.code, this.message);
  final int code;
  final String message;
}
