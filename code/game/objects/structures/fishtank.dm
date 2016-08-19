/obj/structure/fishtank
	name = "fish tank"
	desc = "A large tank of water. There's some fish swimming around inside."
	icon = 'icons/obj/fishtank.dmi'
	icon_state = "tank"

	New()
		..()
		var/fish = pick("orange","green","blue")
		overlays += fish
		overlays += "glass"
		return