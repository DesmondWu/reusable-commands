#!/bin/bash

for run in {1..100}
do
	echo $run >> log.txt
	ls -la >> log.txt
	curl -sS -C - -L -O "http://path/to/file"
done
