# consuming
kafka-console-consumer.sh --bootstrap-server localhost:9092--topic new_topic 
# on another terminal 
kafka-console-producer.sh --bootstrap-server localhost:9092 --producer-property partition.class=org.apache.kafka.clients.producer.RoundRobinPartitioner --topic new_topic
# but do not use RoundRobinPartitioner in production -> inefficient

# consuming from beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --from-beginning

# display key, values and timestamp
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic new_topic --formatter kafka.tools.DefaultMessageFormatter --property print.timestamp=true --propertyprint.key=true --property print.value=true --property print.partition=true --from-beginning