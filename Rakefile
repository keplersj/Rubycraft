require 'ant'

build_dir = "java_build"
file build_dir

task :setup => build_dir do
  ant.property :name => "src.dir", :value => "java_src"
  ant.path(:id => "project.class.path") do
    pathelement :location => "classes"
  end
end

task :compile => :setup do
  ant.javac(:destdir => build_dir) do
    classpath :refid => "project.class.path"
    src { pathelement :location => "${src.dir}" }
  end
end

task :jar => :compile do
  ant.jar :destfile => "simple_compile.jar", :basedir => build_dir
end

task :default => :jar
