# SPDX-License-Identifier: MIT
# Copyright (c) 2018-2023, Advanced Micro Devices, Inc. All rights reserved.

add_library(getopt::getopt STATIC IMPORTED)

if(WIN32)
  set_property(TARGET getopt::getopt PROPERTY IMPORTED_LOCATION "${PROJECT_SOURCE_DIR}/wingetopt/wingetopt.lib")
  target_include_directories(getopt::getopt INTERFACE wingetopt/src)
endif()