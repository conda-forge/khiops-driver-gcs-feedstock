REM Echo all output
@echo on

REM Configure project
cmake --fresh -G Ninja -D CMAKE_BUILD_TYPE=Release -B build\gcs -S . %CMAKE_ARGS%

REM Build
cmake --build build\gcs --parallel --target khiopsdriver_file_gcs

REM Copy the lib for the driver package
cmake --install build\gcs --prefix %PREFIX%\Library
