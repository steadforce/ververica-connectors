# Put your desired version of VVP and Flink in the following commands
FROM registry.ververica.com/v2.12/vvp-gateway:2.12.2

# Oracle Connector
COPY connector-meta.yaml /vvp/sql/opt/connectors/oracle-cdc/connector-meta.yaml
COPY jars/flink-sql-connector-oracle-cdc-3.1.0.jar /vvp/sql/opt/connectors/oracle-cdc/