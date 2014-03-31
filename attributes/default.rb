default[:nginx] = {
  :gzip               => "on",
  :set_real_ip_from   => "0.0.0.0",
  :worker_connections => 1024,
  :worker_processes   => 1,
  :user               => "nginx",
}
