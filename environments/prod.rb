name "prod"
description "production environment for ruby DSL"
cookbook_versions({
	"apache2" => ">= 0.1.0"
})

#override_attributes(
#  apache2: {
#	  mpm_prefork: { MinSpareServers: '5' },
#  }
#)
#

#override_attributes(
#    apache2: {
#        prefork: { min_spareservers: '4' },
#  }
#)

override_attributes(
	"apache2" => {"sites" => {"example.com" => {"servername" => "example.in.com"} } }
)

