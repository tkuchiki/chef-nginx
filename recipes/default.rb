template "/etc/yum.repos.d/nginx.repo" do
  owner    "root"
  mode     0644
  source   "nginx.repo.erb"
end

package "nginx"

template "/etc/nginx/nginx.conf" do
  owner    "root"
  mode     0644
  source   "nginx.conf.erb"
  supports :status => true, :restart => true, :reload => true
  notifies :reload, "service[nginx]"
end

service "nginx" do
  action [:enable, :start]
end
