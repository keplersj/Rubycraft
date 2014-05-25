desc 'Generate the JAR files typically generated in a Minecraft project.'
task :default => [:jar]

desc 'Download and setup the files needed for the project to operate correctly.'
task :setup do
  directory "build"
end

desc 'Setup the environment in preperation of compilation tasks.'
task :setupCompile => :setup do
  directory "build/jruby_source"
end

desc 'Compile the JRuby down to their Java source files equivilants.'
task :compile => [:setupCompile, :cleanCompile] do
  sh "jruby -S jrubyc --java mod -t build/jruby_source"
end

desc 'Delete compilation artifacts.'
task :cleanCompile do
  rm_rf "build/jruby"
end

desc 'Create a deobfuscated JAR file for the project, given the source files and resources collected.'
task :jar => :compile do

end
