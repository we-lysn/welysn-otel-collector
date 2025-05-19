# Use the official OpenTelemetry Collector Contrib image as the base image
FROM otel/opentelemetry-collector-contrib:latest

# Copy the OpenTelemetry Collector configuration file into the container
COPY collector-config.yaml /etc/otelcol/config.yaml

# Set the default command to run the OpenTelemetry Collector with the provided configuration
CMD ["--config=/etc/otelcol/config.yaml"]