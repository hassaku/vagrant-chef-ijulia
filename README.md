# Setup IJulia on Ubuntu

```
$ bundle install
$ vagrant up
$ vagrant ssh-config --host julia-vagrant >> ~/.ssh/config
$ rm -rf cookbooks
$ bundle exec berks vendor cookbooks
$ bundle exec knife solo cook julia-vagrant nodes/julia-vagrant.json
$ ssh julia-vagrant
% ipython notebook --no-browser --ip=0.0.0.0 --port=8888 --profile julia
Access to 0.0.0.0:8888 with browser
```

## TroubleShooting

### ERROR: could not open file /home/vagrant/.julia/Nettle/src/../deps/deps.jl

```
% julia
julia> Pkg.build("Nettle")
```
