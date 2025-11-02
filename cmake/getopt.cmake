# SPDX-License-Identifier: MIT
# Copyright (c) 2018-2025, Advanced Micro Devices, Inc. All rights reserved.

if(WIN32)
  add_library(getopt::getopt STATIC IMPORTED)
  set_property(TARGET getopt::getopt PROPERTY IMPORTED_LOCATION "${PROJECT_SOURCE_DIR}/wingetopt/wingetopt.lib")
  target_include_directories(getopt::getopt INTERFACE wingetopt/src)
else()
  add_library(getopt::getopt INTERFACE IMPORTED GLOBAL)
endif()