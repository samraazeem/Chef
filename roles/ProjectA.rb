name "ProjectA"

description "role to override version and virtual host"

run_list(
        "recipe[apache2]",
       	"recipe[java]"
)


env_run_lists '_default' => [],
	'prod' => ['recipe[apache2]', 'recipe[java]']


override_attributes(
	"java" => { "jdk_version" => "11"}
)
