#!/bin/bash

HADOOP_CMD="/usr/local/hadoop-2.7.5/bin/hadoop"
STREAM_JAR_PATH="/home/zhou/source/mapreduce/hadoop-streaming-2.7.5.jar"
INPUT_FILE_PATH="/user/zhou/input/dau"
OUTPUT_PATH="/user/zhou/output/dau"

$HADOOP_CMD fs -rm -r $OUTPUT_PATH
$HADOOP_CMD jar $STREAM_JAR_PATH \
    -input $INPUT_FILE_PATH \
    -output $OUTPUT_PATH \
    -mapper "python dau_mapper.py" \
    -reducer "python dau_reducer.py" \
    -file dau_mapper.py \
    -file dau_reducer.py

