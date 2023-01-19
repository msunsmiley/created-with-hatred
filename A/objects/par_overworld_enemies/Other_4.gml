/// @description Insert description here
// You can write your code in this editor


if !layer_exists(layer_get_id("shadows")) {
	instances = layer_get_id("Instances")
	instancesDepth = layer_get_depth(instances)

	layer_create(instancesDepth+10,"shadows")
}

shadow = instance_create_layer(x,y,"shadows",oShadow)





