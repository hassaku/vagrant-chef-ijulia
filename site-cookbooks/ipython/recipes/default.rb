include_recipe "python"

%w|pyzmq tornado IPython Jinja2|.each do |pkg|
  python_pip pkg do
    action :install
  end
end
