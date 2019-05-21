#!/bin/bash

HADOOP_CMD="/usr/local/hadoop-2.7.5/bin/hadoop"
STREAM_JAR_PATH="/home/zhou/source/mapreduce/hadoop-streaming-2.7.5.jar"
INPUT_FILE_PATH="/user/zhou/input/wordcount"
OUTPUT_PATH="/user/zhou/output/wordcount"

$HADOOP_CMD fs -rm -r $OUTPUT_PATH
$HADOOP_CMD jar $STREAM_JAR_PATH \
    -input $INPUT_FILE_PATH \
    -output $OUTPUT_PATH \
    -mapper "python wordcount_mapper.py" \
    -reducer "python wordcount_reducer.py" \
    -file wordcount_mapper.py \
    -file wordcount_reducer.py

