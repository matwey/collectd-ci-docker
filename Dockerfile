FROM debian:sid

ADD debian.sh /debian.sh
COPY /checks/*.sh /checks/

ENV EXTRA_PACKAGES="\
  clang \
  clang-17 \
  clang-18 \
  default-jdk \
  default-libmysqlclient-dev \
  gcc \
  gcc-10 \
  intel-cmt-cat \
  javahelper \
  libatasmart-dev \
  libcap-dev \
  libcurl4-gnutls-dev \
  libdbi-dev \
  libdpdk-dev \
  libesmtp-dev \
  libganglia1-dev \
  libgcrypt20-dev \
  libglib2.0-dev \
  libgps-dev \
  libhiredis-dev \
  libi2c-dev \
  libiptc-dev \
  libjansson-dev \
  libldap2-dev \
  libltdl-dev \
  liblua5.1-0-dev \
  liblua5.2-dev \
  liblvm2-dev \
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
  libqpid-proton11-dev \
  librabbitmq-dev \
  librdkafka-dev \
  libriemann-client-dev \
  librrd-dev \
  libsensors-dev \
  libsigrok-dev \
  libsnmp-dev \
  libssl-dev \
  libstatgrab-dev \
  libudev-dev \
  libupsclient-dev \
  libvarnishapi-dev \
  libvirt-dev \
  libxen-dev \
  libxml2-dev \
  libyajl-dev \
  nvidia-cuda-dev \
  perl \
  protobuf-c-compiler \
  protobuf-compiler \
  python3-dev \
  xfslibs-dev \
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
  gps \
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
  log_logstash \
  logfile \
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

RUN echo "deb http://httpredir.debian.org/debian/ experimental main contrib non-free" > /etc/apt/sources.list.d/experimental.list

RUN /debian.sh
