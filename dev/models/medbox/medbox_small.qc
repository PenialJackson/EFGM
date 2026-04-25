
$modelname "efgm/loot_containers/medbox_small.mdl"

$cdmaterials "models/efgm/loot_containers/"

$scale 2
$body box "medbox_small_ref"

$surfaceprop "Plastic_Box"

$sequence "idle" {
	"medbox_small_ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "medbox_small_phys"
{
	$mass 2
}
