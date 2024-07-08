kafka-topics.sh

# List all the topics 
kafka-topics.sh bootstrap-server localhost:9092 --list

# Create a topic 
## No partition, no replication factor
kafka-topics.sh --bootstrap-server localhost:9092 --topic first-topic --create 
## With partition, replication factor
kafka-topics.sh --bootstrap-server localhost:9092 --topic second-topic --create --partitions 3 --replication-factor 1

# --> Cannot have more replication favtors than brokers

# Describe a topic 
kafka-topics.sh --bootstrap-server localhost:90902 --topic first_topic --describe
# Delete a topic
kafka-topics.sh --bootstrap-server localhost:9092 --topic first_topic --delete
