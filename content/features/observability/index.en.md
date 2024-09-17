---
title: Observability
# Description is used as a summary in the homepage digest
description: Ugloo strengthened its observability harness, to offer the most relevant metrics and enable better management of the cluster activity.
date: 2024-05-13T13:00:44+01:00
draft: false
images:
    - grafana_dash.webp
feature-tags:
    - audit
    - logs
    - metrics
    - Observability
    - Prometheus
authors:
    - Ludovic Piot
noindex: false
---

![Screenshot metrics](grafana_dash.webp "[img]Screenshot metrics")
{ .col-md-8 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 .mb-4 }

`Ugloo` significantly strengthened its observability harness in Q1 2024.  
To provide the most relevant metrics and enable the best management of the _cluster_ activity.
{ .alert .alert-warning }

## Metrics and alerts

![Audit icon](audit-icon.png "[img]Audit icon")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 .mb-4 }

- Metrics on the _cluster_ and its operations
- Graphical visualization of these metrics
- Use of the `Prometheus` data model for historical analyzes
- Integration possible with various third-party monitoring tools
- Setting up alerts on the different available metrics.

## Logs

![Logs icon](logs.png "[img]Logs icon")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 .mb-4 }

- Logging of `S3` events for each _tenant_.
- Support for publishing server and audit logs to a _Webhook_
- Audit logs provide a granular view of operations, meeting security and compliance requirements.

## Healthchecks

![Healthchecks icon](healthchecks.png "[img]Healthchecks icon")
{ .col-md-2 .img-fluid .d-flex .mx-auto .align-items-center .rounded .p1 .mb-4 }

- Permanent probe returning a status code simplifying node health checks and high availability of the _cluster_.
- Ease of use of the health check _API_ to monitor _cluster_ stability.
