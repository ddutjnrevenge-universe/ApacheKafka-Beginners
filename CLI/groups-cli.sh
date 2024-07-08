# list consumer groups
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list

# describe one specific group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-app
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-second-app

# start consumer
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic first_topic --group my-first-app
# describe the group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-app

# describe console consumer group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group console-consumer-79381
# delete a group (only if group has no active members)
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --delete --group my-second-app
