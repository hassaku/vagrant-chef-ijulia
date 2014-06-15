package "python-matplotlib" do
  action :install
end

bash "Add IJulia and PyPlot" do
  user "vagrant"
  group "vagrant"
  environment "HOME" => "/home/vagrant"
  code <<-EOS
  julia -e 'for x in ARGS; Pkg.add(x); end' IJulia PyPlot
  EOS
end
