# Setup IJulia on Ubuntu VM

### Install VirtualBox

https://www.virtualbox.org/

### Install Vagrant

http://www.vagrantup.com/

### Provision Ubuntu

```
$ cd vagrant-chef-ijulia
$ bundle install
$ vagrant up
$ vagrant ssh-config --host julia-vagrant >> ~/.ssh/config
$ bundle exec knife solo prepare julia-vagrant
$ rm -rf cookbooks
$ bundle exec berks vendor cookbooks
$ bundle exec knife solo cook julia-vagrant nodes/julia-vagrant.json
```

### Run IJulia

```
$ ssh julia-vagrant
% ipython notebook --no-browser --ip=0.0.0.0 --port=8888 --profile julia
Access to 0.0.0.0:8888 with browser
```

#### TroubleShooting

##### ERROR: could not open file /home/vagrant/.julia/Nettle/src/../deps/deps.jl

```
% julia
julia> Pkg.build("Nettle")
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License

MIT
