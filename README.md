Monitoring Analytics
====================

Limited public demo instance: https://monitoringartist.shinyapps.io/monitoring-analytics/

 If you like or use this project, please provide feedback to author - Star it ★.
 
![Monitoring Analytics](https://raw.githubusercontent.com/monitoringartist/monitoring-analytics/master/doc/monitoring-analytics.gif) 

**Overview of Monitoring Artist Dockerized monitoring ecosystem:**

- **[Zabbix XXL](https://hub.docker.com/r/monitoringartist/zabbix-3.0-xxl/)** - standard Zabbix 3.0 server/proxy/UI/snmpd/java gateway with additional XXL extensions
- **[Zabbix agent XXL](https://hub.docker.com/r/monitoringartist/zabbix-agent-xxl-limited/)** - Zabbix 3.0 agent with [Docker (Mesos/Chronos/Marathon) monitoring](https://github.com/monitoringartist/zabbix-docker-monitoring) and [systemd monitoring](https://github.com/monitoringartist/zabbix-systemd-monitoring)
- **[Zabbix templates](https://hub.docker.com/r/monitoringartist/zabbix-templates/)** - tiny (5MB) image for easy template deployment of selected Zabbix monitoring templates
- **[Zabbix extension - all templates](https://hub.docker.com/r/monitoringartist/zabbix-ext-all-templates/)** - storage image for Zabbix XXL with 200+ [community templates](https://github.com/monitoringartist/zabbix-community-repos)
- **[Kubernetized Zabbix](https://github.com/monitoringartist/kubernetes-zabbix)** - containerized Zabbix cluster based on Kubernetes
- **[Grafana XXL](https://hub.docker.com/r/monitoringartist/grafana-xxl/)** - dockerized Grafana with all community plugins
- **[Monitoring Analytics](https://hub.docker.com/r/monitoringartist/monitoring-analytics/)** - dockerized analytics tool from data scientists
- **[Docker killer](https://hub.docker.com/r/monitoringartist/docker-killer/)** - Docker image for Docker stress and Docker orchestration testing

Please donate to author, so he can continue to publish other awesome projects
for free:

[![Paypal donate button](http://jangaraj.com/img/github-donate-button02.png)]

Dockerized Monitoring Analytics
===============================

```
docker run \
  -d \
  --name=shiny \
  -p 3838:3838 \
  monitoringartist/monitoring-analytics:latest
```

Author
======

[Devops Monitoring Expert](http://www.jangaraj.com 'DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring'),
who loves monitoring systems, which start with letter Z. Those are Zabbix and Zenoss.

Professional devops / monitoring services:

[![Monitoring Artist](http://monitoringartist.com/img/github-monitoring-artist-logo.jpg)](http://www.monitoringartist.com 'DevOps / Docker / Kubernetes / AWS ECS / Zabbix / Zenoss / Terraform / Monitoring')
