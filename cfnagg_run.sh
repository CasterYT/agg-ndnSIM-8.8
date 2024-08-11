#!/bin/bash

PYTHON='/usr/bin/python3.10'

# Generate corresponding network topology
cd ./src/ndnSIM/experiments
$PYTHON dcGenerator.py
cd ../../../

# Start simulation
NS_LOG=ndn.Consumer:ndn.ConsumerINA:ndn.Aggregator ./waf --run agg-aimd-test

# Generate simulation result
cd ./src/ndnSIM/experiments
$PYTHON ResultMeasurement.py
