# CMake generated Testfile for 
# Source directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/nrrd
# Build directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/nrrd
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(trand "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_trand")
add_test(tload "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tload")
add_test(tskip11p "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "66" "81" "-o" "tsA.raw" "tsA.nhdr")
add_test(tskip11n "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "66" "81" "-ns" "-o" "tsB.raw" "tsB.nhdr")
add_test(tskip01p "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "0" "99" "-o" "tsC.raw" "tsC.nhdr")
add_test(tskip01n "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "0" "99" "-ns" "-o" "tsD.raw" "tsD.nhdr")
add_test(tskip10p "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "77" "0" "-o" "tsE.raw" "tsE.nhdr")
add_test(tskip10n "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_tskip" "-s" "101" "102" "103" "-p" "77" "0" "-ns" "-o" "tsF.raw" "tsF.nhdr")
add_test(sanity "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_sanity")
add_test(macros "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_macros")
