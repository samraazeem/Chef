#Cookbook Name: java
#Recipe: openjdk
#Author: Samra Azeem

version= node['java']['jdk_version']
#java_home= node['java']['java_home']
#java_home_parent= File.direname java_home
#jdk_home= ""

#ruby_block "set-env-java-home" do
#	block do
#		ENV["JAVA_HOME"]= java_home
#	end
#end


package "openjdk-#{version}-jdk" do
	action :install
#	notifies :create, "ruby_block[set-env-java-home]"
end

