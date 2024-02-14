# Use the official Grafana base image
FROM grafana/grafana:latest

# Expose Grafana web UI port
EXPOSE 3000

# Optionally, you can customize Grafana configuration by copying your own custom.ini file
# COPY custom.ini /etc/grafana/grafana.ini

# Optionally, you can add provisioning files for data sources, dashboards, etc.
# COPY provisioning /etc/grafana/provisioning

# Command to run Grafana
CMD ["grafana-server", "--homepath=/usr/share/grafana", "--config=/etc/grafana/grafana.ini", "cfg:default.paths.data=/var/lib/grafana", "cfg:default.paths.logs=/var/log/grafana"]
