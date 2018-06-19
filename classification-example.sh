#!/usr/bin/env bash

mvn package

JAR=./target/fasttext-0.0.1-SNAPSHOT-jar-with-dependencies.jar

java -jar ${JAR} supervised -input "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/SDrive_Training/autocomplete_lc_forfasttext.txt" -output "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/miao_models_testing/miao_self_generate_java_fasttext/miao_ac_ftjavamodel" -dim 100 -lr 0.1 -epoch 50 -loss hs -minCount 5 -wordNgrams 2 -minn 3 -maxn 6 -thread 8

java -jar ${JAR} test "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/miao_models_testing/miao_self_generate_java_fasttext/miao_ac_ftjavamodel.bin" "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/testing/ac_test.txt"

java -jar ${JAR} predict "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/models/miao_models_testing/miao_self_generate_java_fasttext/miao_ac_ftjavamodel.bin" "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/data/testing/ac_test.txt" > "/Users/abdullojon.abdulloev/Desktop/project_autocomplete/jon_scripts/miao_predict.txt"
