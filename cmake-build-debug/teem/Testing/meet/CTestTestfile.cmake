# CMake generated Testfile for 
# Source directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/meet
# Build directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(enmall "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_enmall")
add_test(kernall "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_kernall")
add_test(buildinfo "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_buildinfo")
add_test(probeSS_box01 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "box" "-supp" "1.0" "-pnum" "1500")
add_test(probeSS_cos01 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "cos" "-supp" "1.0" "-pnum" "1500")
add_test(probeSS_cos02 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "cos" "-supp" "2.0" "-pnum" "1200")
add_test(probeSS_cos04 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "cos" "-supp" "4.0" "-pnum" "1000")
add_test(probeSS_cos10 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "cos" "-supp" "9.0" "-pnum" "800")
add_test(probeSS_ctmr02 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "ctmr" "-supp" "2.0" "-pnum" "1300")
add_test(probeSS_ctmr04 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "ctmr" "-supp" "4.0" "-pnum" "1300")
add_test(probeSS_ctmr10 "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/test_probeSS" "-k" "ctmr" "-supp" "9.0" "-pnum" "1300")
