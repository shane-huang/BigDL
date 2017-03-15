#!/bin/bash
export IPYTHON_OPTS="notebook --notebook-dir=./  --ip=172.168.2.151 --no-browser"

#SPARK_HOME=/opt/work/spark-1.5.1-bin-hadoop2.6/
SPARK_HOME=/root/shane/spark-1.6.0-bin-hadoop2.6/
BigDL_HOME=/root/shane/BigDL                                                                                    
#MASTER=spark://Gondolin-Node-051:7077
MASTER="local[4]"

PYTHON_API_ZIP_PATH=${BigDL_HOME}/dist/lib/bigdl-0.1.0-SNAPSHOT-python-api.zip
BigDL_JAR_PATH=${BigDL_HOME}/dist/lib/bigdl-0.1.0-SNAPSHOT-jar-with-dependencies.jar

export PYTHONPATH=${PYTHON_API_ZIP_PATH}:$PYTHONPATH
export IPYTHON_OPTS="notebook --notebook-dir=./  --ip=* --no-browser"

${SPARK_HOME}/bin/pyspark \
    --master ${MASTER} \
    --driver-cores 5  \
   --driver-memory 10g  \
   --total-executor-cores 4  \
   --executor-cores 1  \
   --executor-memory 20g \
   --conf spark.akka.frameSize=64 \
    --py-files ${PYTHON_API_ZIP_PATH} \
    --jars ${BigDL_JAR_PATH} \
    --conf spark.driver.extraClassPath=${BigDL_JAR_PATH} \
    --conf spark.executor.extraClassPath=bigdl-0.1.0-SNAPSHOT-jar-with-dependencies.jar
