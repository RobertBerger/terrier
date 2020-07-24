#!/bin/bash

if [[ ! -v TRAINING_ID ]];
then
  BLACK=$(tput setaf 0)
  RED=$(tput setaf 1)
  GREEN=$(tput setaf 2)
  LIME_YELLOW=$(tput setaf 190)
  YELLOW=$(tput setaf 3)
  POWDER_BLUE=$(tput setaf 153)
  BLUE=$(tput setaf 4)
  MAGENTA=$(tput setaf 5)
  CYAN=$(tput setaf 6)
  WHITE=$(tput setaf 7)
  BRIGHT=$(tput bold)
  NORMAL=$(tput sgr0)
  BLINK=$(tput blink)
  REVERSE=$(tput smso)
  UNDERLINE=$(tput smul)
fi

TRAINING="yocto"

declare -A subreposgithub

subreposgithub[poky -b 2019-05-13-warrior-2.7+]="poky"

declare -A subrepos

subrepos[common-scripts]="common-scripts"
subrepos[support_java-stuff]="java-stuff"
subrepos[support_pdf-link-checker]="pdf-link-checker"
subrepos[doc_mega-manual]="mega-manual"
subrepos[doc_bitbake-user-manual]="bitbake-user-manual"
subrepos[doc_yocto-autobuilder]="yocto-autobuilder"
subrepos[doc_yocto-bitbake]="yocto-bitbake"
subrepos[doc_yocto-bitbake_book-cover]="yocto-bitbake_book-cover"
subrepos[doc_yocto-reference]="yocto-reference"
subrepos[doc_yocto-reference_book-cover]="yocto-reference_book-cover"
subrepos[doc_yocto-book-cover]="yocto-book-cover"

subrepos[slides_Intro]="yocto_slides/00_Intro"
subrepos[slides_Specifics]="yocto_slides/01_Specifics"
subrepos[slides_EvalBoard]="yocto_slides/02_Eval-board"
subrepos[slides_YoctoIntro]="yocto_slides/03_YoctoIntro"
subrepos[slides_YoctoCommunity]="yocto_slides/03_YoctoIntroCommunity"
#subrepos[slides_YoctoAB]="yocto_slides/04_YoctoAutobuilder"
subrepos[slides_YoctoDevEnv]="yocto_slides/04_DevEnv"
subrepos[slides_YoctoWorkflow]="yocto_slides/05_YoctoWorkflow"
subrepos[slides_YoctoBitBake]="yocto_slides/06_BitBake"
subrepos[slides_YoctoLayers]="yocto_slides/07_Layers"
subrepos[slides_YoctoBsp]="yocto_slides/08_BSP"
subrepos[slides_YoctoKernel]="yocto_slides/09_Kernel"
subrepos[slides_YoctoAppDevel]="yocto_slides/10_AppDevel"
subrepos[slides_YoctoLibs]="yocto_slides/10_Libs"
subrepos[slides_YoctoEclipse]="yocto_slides/11_Eclipse"
subrepos[slides_usrDebugging]="yocto_slides/12_Debugging"
subrepos[slides_usrProfilingTracing]="yocto_slides/13_Profiling_Tracing"
subrepos[slides_YoctoPackageManagement]="yocto_slides/15_PackageManagement"
subrepos[slides_YoctoLicensing]="yocto_slides/17_Licensing"
subrepos[slides_YoctoDevtool]="yocto_slides/20_Devtool"
subrepos[slides_YoctoPhytecYoctoRef]="yocto_slides/40_PhytecYoctoRef"

subrepos[sandbox_work-docker-preinstall-checks]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/00_docker-preinstall-checks"
subrepos[sandbox_work-docker-preinstall-checks -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/00_docker-preinstall-checks"
subrepos[sandbox_work-install-docker]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/01_install-docker"
subrepos[sandbox_work-install-docker -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/01_install-docker"
subrepos[sandbox_work-install-resy-infra]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/01.01_install-resy-infra"
subrepos[sandbox_work_install-yocto]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/02-install-yocto"
subrepos[sandbox_work_install-yocto -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/02-install-yocto"
subrepos[sandbox_work-SD-card]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/03-SD-card"
subrepos[sandbox_work-SD-card -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/03-SD-card"
subrepos[sandbox_work-u-boot]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/08-u-boot"
subrepos[sandbox_work-u-boot]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/08-u-boot"
subrepos[sandbox_work-mainline-kernel]="yocto-multi-v7-ml/${TRAINING}-for-trainer/sandbox_work/10-mainline-kernel"
subrepos[sandbox_work-mainline-kernel -b student]="yocto-multi-v7-ml/${TRAINING}-for-student/sandbox_work/10-mainline-kernel"
subrepos[sandbox_work_mainline-kernel-cooked]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/21_mainline-kernel-cooked"
subrepos[sandbox_work_mainline-kernel-cooked]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/21_mainline-kernel-cooked"
subrepos[sandbox_work_nfs-server]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/23-nfs-server"
subrepos[sandbox_work_nfs-server -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/23-nfs-server"
subrepos[sandbox_work_tftp-server]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/31-tftp-server"
subrepos[sandbox_work_tftp-server]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/31-tftp-server"
subrepos[sandbox_work_tftp-target]="yocto-multi-v7-ml/yocto-for-trainer/sandbox_work/32-tftp-target"
subrepos[sandbox_work_tftp-target -b student]="yocto-multi-v7-ml/yocto-for-student/sandbox_work/32-tftp-target"

subrepos[bb_images-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/01_images-1"
subrepos[bb_images-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/01_images-1"
subrepos[bb_simple-hello-world]="yocto-multi-v7-ml/yocto-for-trainer/recipes/10_simple-hello-world"
subrepos[bb_simple-hello-world -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/10_simple-hello-world"
subrepos[bb_simple-hello-world-git]="yocto-multi-v7-ml/yocto-for-trainer/recipes/11_simple-hello-world-git"
subrepos[bb_simple-hello-world-git -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/11_simple-hello-world-git"
subrepos[bb_hello-autotooled]="yocto-multi-v7-ml/yocto-for-trainer/recipes/15_hello-autotooled"
subrepos[bb_hello-autotooled -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/15_hello-autotooled"
subrepos[bb_sl]="yocto-multi-v7-ml/yocto-for-trainer/recipes/18_sl"
subrepos[bb_sl -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/18_sl"
subrepos[bb_debug-builds]="yocto-multi-v7-ml/yocto-for-trainer/recipes/19_debug-builds"
subrepos[bb_debug-builds -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/19_debug-builds"
subrepos[bb_BitBake-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/20_bitbake"
subrepos[bb_BitBake-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/20_bitbake"
subrepos[bb_Layers-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/40_layers"
# no bb_Layers-1 for student
subrepos[bb_customize-images-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/50_customize-images"
subrepos[bb_customize-images-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/50_customize-images"
subrepos[bb_bsp-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/55_bsp"
subrepos[bb_bsp-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/55_bsp"
subrepos[bb_kernel-conf-fragment-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/56_kernel-conf-fragment"
subrepos[bb_kernel-conf-fragment-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/56_kernel-conf-fragment"
subrepos[bb_kmod-in-tree]="yocto-multi-v7-ml/yocto-for-trainer/recipes/57_kmod-in-tree"
subrepos[bb_kmod-in-tree -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/57_kmod-in-tree"
subrepos[bb_kmod-out-of-tree]="yocto-multi-v7-ml/yocto-for-trainer/recipes/58_kmod-out-of-tree"
subrepos[bb_kmod-out-of-tree -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/58_kmod-out-of-tree"
subrepos[bb_fdt-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/59_fdt"
subrepos[bb_fdt-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/59_fdt"
subrepos[bb_cross-toolchain-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/61_cross-toolchain"
# no bb_cross-toolchain-1 for student
subrepos[bb_cross-toolchain_hello-makefile]="yocto-multi-v7-ml/yocto-for-trainer/recipes/64_cross-toolchain_hello-makefile"
subrepos[bb_cross-toolchain_hello-makefile -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/64_cross-toolchain_hello-makefile"
subrepos[bb_cross-toolchain_hello-autotooled]="yocto-multi-v7-ml/yocto-for-trainer/recipes/65_cross-toolchain_hello-autotooled"
subrepos[bb_cross-toolchain_hello-autotooled -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/65_cross-toolchain_hello-autotooled"
subrepos[bb_cross-toolchain_hello-autotooled-from-tar]="yocto-multi-v7-ml/yocto-for-trainer/recipes/66_cross-toolchain_hello-autotooled-from-tar"
# no bb_cross-toolchain_hello-autotooled-from-tar for student
subrepos[bb_cross-toolchain_library-autotooled-libhwtest]="yocto-multi-v7-ml/yocto-for-trainer/recipes/67.01_cross-toolchain_library-autotooled-libhwtest"
subrepos[bb_cross-toolchain_library-autotooled-lib]="yocto-multi-v7-ml/yocto-for-trainer/recipes/67_cross-toolchain_library-autotooled-lib"
subrepos[bb_cross-toolchain_library-autotooled-lib -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/67_cross-toolchain_library-autotooled-lib"
subrepos[bb_autotooled-lib]="yocto-multi-v7-ml/yocto-for-trainer/recipes/68.01_autotooled-lib"
subrepos[bb_autotooled-lib -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/68.01_autotooled-lib"
subrepos[bb_use-autotooled-lib]="yocto-multi-v7-ml/yocto-for-trainer/recipes/68.02_use-autotooled-lib"
subrepos[bb_use-autotooled-lib -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/68.02_use-autotooled-lib"

# some library examples - trainer only
subrepos[bb_autotooled-lib-so]="yocto-multi-v7-ml/yocto-for-trainer/recipes/69.01_autotooled-lib-so"
subrepos[bb_autotooled-lib-a]="yocto-multi-v7-ml/yocto-for-trainer/recipes/69.02.01_autotooled-lib-a"
subrepos[bb_autotooled-lib-a-SDKIMAGE_FEATURES]="yocto-multi-v7-ml/yocto-for-trainer/recipes/69.02.02_autotooled-lib-a"
subrepos[bb_autotooled-lib-so-a]="yocto-multi-v7-ml/yocto-for-trainer/recipes/69.03_autotooled-lib-so-a"
subrepos[bb_zlib-lib-so]="yocto-multi-v7-ml/yocto-for-trainer/recipes/69.04_zlib-lib-so"

# morty does not support adt installer anymore
#subrepos[bb_adt-installer]="yocto-multi-v7-ml/yocto-for-trainer/recipes/70_adt-installer"
#subrepos[bb_adt-installer -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/70_adt-installer"
subrepos[bb_ext-sdk]="yocto-multi-v7-ml/yocto-for-trainer/recipes/70_ext-sdk"
subrepos[bb_prep-eclipse]="yocto-multi-v7-ml/yocto-for-trainer/recipes/71_prep-eclipse"
subrepos[bb_prep-eclipse -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/71_prep-eclipse"
subrepos[bb_target-gdb]="yocto-multi-v7-ml/yocto-for-trainer/recipes/80_debug_gdb"
# no bb_target-gdb for student
subrepos[bb_gdbserver]="yocto-multi-v7-ml/yocto-for-trainer/recipes/81_debug_gdbserver"
subrepos[bb_gdbserver -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/81_debug_gdbserver"

subrepos[usr_src-perf]="yocto-multi-v7-ml/yocto-for-trainer/recipes/82_perf"
# no usr_src-perf for student
subrepos[usr_src-gprof]="yocto-multi-v7-ml/yocto-for-trainer/recipes/83_gprof"
subrepos[usr_src-gprof -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/83_gprof"
subrepos[usr_src-gcov]="yocto-multi-v7-ml/yocto-for-trainer/recipes/84_gcov"
subrepos[usr_src-gcov -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/84_gcov"
subrepos[usr_src_unnamed_sem_wait_strace]="yocto-multi-v7-ml/yocto-for-trainer/recipes/85_strace"
subrepos[usr_src_unnamed_sem_wait_strace -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/85_strace"
subrepos[knl_src-ftrace-function-graph-tracer-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/86_ftrace"
subrepos[knl_src-ftrace-function-graph-tracer-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/86_ftrace"
# removed oprofile example for now - since oprofile is deprecated by perf
#subrepos[usr_src-oprofile_multiply]="yocto-multi-v7-ml/yocto-for-trainer/recipes/87_oprofile"
#subrepos[usr_src-oprofile_multiply -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/87_oprofile"
subrepos[knl_src-lttng-kernel]="yocto-multi-v7-ml/yocto-for-trainer/recipes/88_lttng-kernel"
# no knl_src-lttng-kernel for student
subrepos[usr_src-lttng-ust]="yocto-multi-v7-ml/yocto-for-trainer/recipes/89_lttng-ust"
subrepos[usr_src-lttng-ust -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/89_lttng-ust"
subrepos[knl_src-lttng-kprobe]="yocto-multi-v7-ml/yocto-for-trainer/recipes/90_lttng-kprobe"
# no knl_src-lttng-kprobe for student
subrepos[knl_src-stap-1]="yocto-multi-v7-ml/yocto-for-trainer/recipes/90_stap"
subrepos[knl_src-stap-1 -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/90_stap"

subrepos[bb_packages]="yocto-multi-v7-ml/yocto-for-trainer/recipes/91_packages"
subrepos[bb_packages -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/91_packages"
# no bb_packages for student
subrepos[bb_licensing]="yocto-multi-v7-ml/yocto-for-trainer/recipes/92_licensing"
subrepos[bb_licensing -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/92_licensing"
subrepos[bb_devtool]="yocto-multi-v7-ml/yocto-for-trainer/recipes/93_devtool"
subrepos[bb_devtool -b student]="yocto-multi-v7-ml/yocto-for-student/recipes/93_devtool"

# hello world - various approaches - trainer only
subrepos[bb_hello-cpp]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.01_hello-cpp"
subrepos[bb_hello-cmake]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.02_hello-cmake"
subrepos[bb_hello-cmake-feature]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.03_hello-cmake-feature"
subrepos[bb_hello-cmake-pthread]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.04_hello-cmake-pthread"
subrepos[bb_cross-toolchain_libhw-cmake]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.05_cross-toolchain_libhw-cmake"
subrepos[bb_libhw-cmake-so]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.06_libhw-cmake-so"
subrepos[bb_libhw-cmake-a]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.07_libhw-cmake-a"
subrepos[bb_cross-toolchain_libhwtest-cmake]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.08_cross-toolchain_libhwtest-cmake"
subrepos[bb_libhwtest-cmake-so-a]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.09_libhwtest-cmake-so-a"
subrepos[bb_hello-makefile]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.10_hello-makefile"
subrepos[bb_lib-makefile-so]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.11_lib-makefile-so"
subrepos[bb_use-makefile-lib-so]="yocto-multi-v7-ml/yocto-for-trainer/recipes/95.12_use-makefile-lib-so"

subrepos[statistics_yocto-3.0]="statistics"
subrepos[flyer_yocto-3.0]="flyer"
