# Put your desired version of VVP and Flink in the following commands
FROM registry.ververica.com/v2.12/vvp-gateway:2.12.0

# Iceberg Catalog
COPY catalog-meta.yaml /vvp/sql/opt/catalogs/iceberg/catalog-meta.yaml
COPY jars/iceberg-flink-runtime-1.17-1.4.3.jar /vvp/sql/opt/catalogs/iceberg/
COPY jars/hadoop-aws-3.3.4.jar /vvp/sql/opt/catalogs/iceberg/
COPY jars/flink-s3-fs-hadoop-1.18.0.jar /vvp/sql/opt/catalogs/iceberg/

# Iceberg Connector
COPY connector-meta.yaml /vvp/sql/opt/connectors/iceberg/connector-meta.yaml
COPY jars/iceberg-flink-runtime-1.17-1.4.3.jar /vvp/sql/opt/connectors/iceberg/
COPY jars/hadoop-aws-3.3.4.jar /vvp/sql/opt/connectors/iceberg/
COPY jars/flink-s3-fs-hadoop-1.18.0.jar /vvp/sql/opt/connectors/iceberg/

# VVP SQL Editor libraries for Iceberg
COPY jars/flink-hadoop-fs-1.18.0.jar /vvp/app/lib/