require 'raven'
require 'rake/clean'

CLEAN.include('target')

dependency 'compile_deps' do |t|
    t.deps << [{'commons-logging' => '1.0.4'}, 'commons-pool']
    t.deps << ['commons-lang', 'wsdl4j', 'log4j']
end

javac 'compile' => 'compile_deps' do |t|
    t.build_path << "src/main/java"
end

jar 'ode-utils.jar' => 'compile'

jar_source 'ode-utils-source.jar' => 'compile'

lib_dir 'prepare_lib' => 'compile_deps' do |t|
    t.target = 'dist/lib'
end

war 'utils.war' => ['compile', 'compile_deps'] do |t|
    t.webapp_dir = 'src/test'
end

javadoc 'jdoc' => 'compile_deps'

junit 'test' => ['compile', 'compile_deps']

gem_wrap_inst 'gem' => 'ode-utils.jar' do |t|
    t.version = '1.0'
end
