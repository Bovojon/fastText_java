#!/usr/bin/env bash

mvn package

JAR=./target/fasttext-0.0.1-SNAPSHOT-jar-with-dependencies.jar

java -jar ${JAR} supervised -input "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/training/autocomplete_nov_2015_feb_2018_preprocessed.txt" -output "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/jon_models/test_models/june_21_6" -dim 200 -lr 0.1 -epoch 50 -loss hs -wordNgrams 2 -minn 2 -maxn 6 -thread 8

java -jar ${JAR} test "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/jon_models/test_models/june_21_6.bin" "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/validation/autocomplete_march_april_2018_preprocessed.txt"

# java -jar ${JAR} predict "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/miao_models_testing/miao_self_generate_java_fasttext/miao_ac_ftjavamodel.bin" "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/testing/ac_test.txt" > "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/jon_scripts/miao_predict.txt"
