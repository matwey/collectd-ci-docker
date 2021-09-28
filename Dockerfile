FROM debian:bullseye

ADD debian.sh /debian.sh
COPY /checks/*.sh /checks/

ENV EXTRA_PACKAGES="\
  default-jdk \
  default-libmysqlclient-dev \
  intel-cmt-cat \
  iptables-dev \
  javahelper \
  libatasmart-dev \
  libcap-dev \
  libcurl4-gnutls-dev \
  libdbi0-dev \
  libdpdk-dev \
  libesmtp-dev \
  libgcrypt20-dev \
  libganglia1-dev \
  libglib2.0-dev \
  libgps-dev \
  libgrpc++-dev \
  libhiredis-dev \
  libi2c-dev \
  libldap2-dev \
  libltdl-dev \
  liblua5.3-dev \
  libmemcached-dev \
  libmicrohttpd-dev \
  libmnl-dev \
  libmodbus-dev \
  libmongoc-dev \
  libmosquitto-dev \
  libnotify-dev \
  libopenipmi-dev \
  liboping-dev \
  libow-dev \
  libpcap-dev \
  libperl-dev \
  libpq-dev \
  libprotobuf-c-dev \
  libprotobuf-dev \
  libqpid-proton11-dev \
  librabbitmq-dev \
  librdkafka-dev \
  libriemann-client-dev \
  librrd-dev \
  libsensors-dev \
  libslurm-dev \
  libsnmp-dev \
  libtokyocabinet-dev \
  libtokyotyrant-dev \
  libudev-dev \
  libupsclient-dev \
  libvarnishapi-dev \
  libvirt-dev \
  libxen-dev \
  libxml2-dev \
  libyajl-dev \
  linux-libc-dev \
  protobuf-c-compiler \
  protobuf-compiler \
  protobuf-compiler-grpc \
  python-dev \
  riemann-c-client \
"

ENV SUPPORTED_PLUGIN_LIST="\
  libcollectdclient \
  aggregation \
  amqp \
  amqp1 \
  apache \
  apcups \
  ascent \
  barometer \
  battery \
  bind \
  buddyinfo \
  capabilities \
  ceph \
  cgroups \
  check_uptime \
  chrony \
  connectivity \
  conntrack \
  contextswitch \
  cpu \
  cpufreq \
  cpusleep \
  csv \
  curl \
  curl_json \
  curl_xml \
  dbi \
  df \
  disk \
  dns \
  dpdkevents \
  dpdkstat \
  dpdk_telemetry \
  drbd \
  email \
  entropy \
  ethstat \
  exec \
  fhcount \
  filecount \
  fscache \
  gmond \
  gps \
  grpc \
  hddtemp \
  hugepages \
  infiniband \
  intel_rdt \
  interface \
  ipc \
  ipmi \
  iptables \
  ipvs \
  irq \
  java \
  load \
  logfile \
  log_logstash \
  logparser \
  lua \
  madwifi \
  match_empty_counter \
  match_hashed \
  match_regex \
  match_timediff \
  match_value \
  mbmon \
  mcelog \
  md \
  mdevents \
  memcachec \
  memcached \
  memory \
  modbus \
  mqtt \
  multimeter \
  mysql \
  netlink \
  network \
  nfs \
  nginx \
  notify_desktop \
  notify_email \
  notify_nagios \
  ntpd \
  numa \
  nut \
  olsrd \
  onewire \
  openldap \
  openvpn \
  ovs_events \
  ovs_stats \
  pcie_errors \
  perl \
  pinba \
  ping \
  postgresql \
  powerdns \
  processes \
  procevent \
  protocols \
  python \
  redis \
  rrdcached \
  rrdtool \
  sensors \
  serial \
  smart \
  snmp \
  snmp_agent \
  statsd \
  swap \
  synproxy \
  sysevent \
  syslog \
  table \
  tail \
  tail_csv \
  target_notification \
  target_replace \
  target_scale \
  target_set \
  target_v5upgrade \
  tcpconns \
  teamspeak2 \
  ted \
  thermal \
  threshold \
  tokyotyrant \
  turbostat \
  ubi \
  unixsock \
  uptime \
  users \
  uuid \
  varnish \
  virt \
  vmem \
  vserver \
  wireless \
  write_graphite \
  write_http \
  write_influxdb_udp \
  write_kafka \
  write_log \
  write_mongodb \
  write_prometheus \
  write_redis \
  write_riemann \
  write_sensu \
  write_stackdriver \
  write_syslog \
  write_tsdb \
  xencpu \
  zfs_arc \
  zookeeper \
"

RUN /debian.sh
