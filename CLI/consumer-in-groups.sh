# create a 3-parititon topic
kafka-topics.sh --bootstrap-server localhost:9092 --topic test_topic --create --partitions 3 

# start producer
kafka-console-producer.sh --bootstrap-server localhost:9092 --producer-property partitioner.class=org.apache.kafka.clients.producer.RoundRobinPartitioner --topic test_topic

# start consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test_topic --group my-first-app

# Some note: message displayed not in chronological order
# --> because order is only guaranteed within a partition

# start another consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test_topic --group my-first-app

# start another consumer part of a different group from beginning
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test_topic --group my-second-app --from-beginning
# Some note: once run and display all messages, it will not display when run again
