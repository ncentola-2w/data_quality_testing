#!/bin/bash

echo "creating virtual env..."
python3 -m virtualenv data_quality_testing
source data_quality_testing/bin/activate
pip install ipykernel
python -m ipykernel install --name=data_quality_testing

pip install notebook

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
#pip install -r requirements.txt

export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
export JRE_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/jre/

export SPARK_HOME=/usr/local/Cellar/apache-spark/3.1.1/libexec
export PATH=/usr/local/Cellar/apache-spark/3.1.1/bin:$PATH

export PYSPARK_PYTHON=data_quality_testing/bin/python3
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
