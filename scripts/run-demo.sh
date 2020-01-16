#!/usr/bin/env bash
example_dir=$1

python label_studio/server.py init --template=sentiment_analysis sentiment_analysis_project
python label_studio/server.py -p ${PORT:-8200} start sentiment_analysis_project
