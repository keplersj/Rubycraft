require 'ant'
require 'jbundler'
require 'rake/clean'

CLEAN
CLEAN.class

CLOBBER
CLOBBER.class

PROJECT_NAME = 'Rubycraft'

MAIN_SRC_DIR = 'mod'

BUILD_DIR = 'build'
CLEAN << BUILD_DIR

DIST_DIR = "dist"
CLOBBER << DIST_DIR

COMPILE_DIR = "#{BUILD_DIR}/compile"
CLASSES_DIR = "#{COMPILE_DIR}/classes"

desc 'Generate the artifacts files typically generated in a Minecraft project.'
task :default => [:clean, :clobber, :make_jars]

task :setup do
  ant.path :id => 'classpath' do
    fileset :dir => COMPILE_DIR
    fileset :dir => JBUNDLER_CLASSPATH
  end

  mkdir BUILD_DIR
  mkdir DIST_DIR
  mkdir COMPILE_DIR
  mkdir CLASSES_DIR
end

task :make_jars => :setup do
  compile_jruby(MAIN_SRC_DIR)
  make_jar CLASSES_DIR, "#{PROJECT_NAME}-deobf.jar"
end

def compile_jruby(source_directory)
  sh "jruby -S jrubyc #{source_directory} -t #{CLASSES_DIR}"
end

def compile_java(source_folder)
  ant.javac :srcdir => source_folder, :destdir => CLASSES_DIR, :classpathref => 'classpath',
            :source => "1.6", :target => "1.6", :debug => "yes", :includeantruntime => "no"
end

def make_jar(files_to_be_archieved, jar_file_name)
  ant.jar :jarfile => "#{DIST_DIR}/#{jar_file_name}", :basedir => files_to_be_archieved
  puts
end
