kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --create

# produce
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic 
# produce with properties
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic --producer-property acks=all
# produce to a non existing topic
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic another_topic

# if want to edit partition
nano kafka_2.13-3.7.1/config/kraft/server.properties
#modified num.partitions=3

# OVERALL: remember to create topics with appropirate number of partitions before producing to them

# produce with keys
kafka-console-producer.sh --bootstrap-server localhost:9092 --topic first_topic --property parse.key=true --property key.separator=:
# then type keys and values
# view the keys and values
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --from-beginning --property print.key=true --property key.separator=: