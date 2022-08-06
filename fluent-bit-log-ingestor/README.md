# fluent-bit-log-ingestor

A `DaemonSet` to tail local log files in nodes, and forwards to a log sink.

Usage:

1. Clone this repo
2. Update address of log sink. see [config-fluent-bit.yaml](config-fluent-bit.yaml).
3. Create a `monitoring` k8s namespace
4. run `kubectl -n monitoring -k .`

