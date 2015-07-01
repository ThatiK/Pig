A = LOAD '/user/karthik/inputFiles/WordCountTest.txt'; 

 B = MAPREDUCE '/var/hdfs-input/HadoopDev-0.0.1-SNAPSHOT.jar' STORE A into '/user/karthik/inputFiles/pigwc' LOAD '/user/karthik/pigoutwc' as (word:chararray,count:int) `com.cloudwick.hadoop.HadoopDev.WordCount /user/karthik/inputFiles/pigwc /user/karthik/pigoutwc`;

dump B;
