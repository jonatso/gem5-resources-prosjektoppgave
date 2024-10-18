#!/bin/bash

# Move whole DNNMARK folder to /home/gem5 before running this script, 
# using jonatan_scripts/mv_dnnmark_to_disk_img.sh

# add the DNNMark folder to the LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/gem5/DNNMark/build:$LD_LIBRARY_PATH

cd /home/gem5/DNNMark

#build/benchmarks/test_fwd_softmax/dnnmark_test_fwd_softmax -config config_example/softmax_config.dnnmark -mmap mmap.bin
# instead of writing here, we can use the positional arguments. First for the file to run, and the second for the rest of the arguments
$1 $2
