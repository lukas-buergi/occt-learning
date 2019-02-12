cmake_minimum_required (VERSION 2.6)

project (bottle)

set(OpenCASCADE_DIR "/usr/lib/cmake/occt/")
find_package(OpenCASCADE COMPONENTS FoundationClasses REQUIRED)
find_package(OpenCASCADE COMPONENTS ModelingData REQUIRED)
find_package(OpenCASCADE COMPONENTS DataExchange REQUIRED)
include_directories(${OpenCASCADE_INCLUDE_DIR})

set (LIBS ${LIBS}
  TKernel
  TKMath
  TKBRep
  TKGeomBase
  TKG3d
  TKG2d
  TKTopAlgo
  TKPrim
  TKBO
  TKFillet
  TKOffset
  TKSTL
)

add_executable(bottle main.cpp)

target_link_libraries(bottle ${LIBS})

