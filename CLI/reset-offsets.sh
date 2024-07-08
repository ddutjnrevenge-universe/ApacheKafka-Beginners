#  Describe consumer group
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-app

# Dry run: reset offsets to the beginning of each partition
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-app --reset-offsets --to-earliest --topic test-topic --dry-run

# execute flag is needed
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my-first-app --reset-offsets --to-earliest --topic test-topic --execute

#describe consumer group again
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-app

# consume from where offset is reset
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test-topic --group my-first-app

# describe consumer group again
kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my-first-app