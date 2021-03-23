library configuration;

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

import '../../infrastructure/auth/auth_local_datasource.dart';
import '../injection/injection.dart';
import '../style/style.dart';
import '../utils/logging.dart';
import '../utils/string_utils.dart';

part 'src/build_config.dart';
part 'src/env.dart';
part 'src/interceptor/auth_interceptor.dart';
