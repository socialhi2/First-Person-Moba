# This is the location for character statistics and the logic that goes into it
class_name char_stats

# Health Statistics
@export var max_health: float = 100.00
var base_health: float = 100.00
var fb_health: int = 0
var pb_health: float = 0.00
var health = (base_health + fb_health) * pb_health

# Health Regen
var base_health_regen: float = 10.00
var fb_health_regen: int = 0
var pb_health_regen: float = 0.00
var health_regen = (base_health_regen + fb_health_regen) * pb_health_regen

# Stamina
@export var max_stamina: float = 100.00
var base_stamina: float = 100.00
var fb_stamina: int = 0
var pb_stamina: float = 0.00
var stamina = (base_stamina + fb_stamina) * pb_stamina

# Stamina Regen
var base_stamina_regen: float = 10.00
var fb_stamina_regen: int = 0
var pb_stamina_regen: float = 0.00
var stamina_regen = (base_stamina_regen + fb_stamina_regen) * pb_stamina_regen

# Mana
@export var max_mana: float = 100.00
var base_mana: float = 100.00
var fb_mana: int = 0
var pb_mana: float = 0.00
var mana = (base_mana + fb_mana) * pb_mana

# Mana Regen
var base_mana_regen: float = 10.00
var fb_mana_regen: int = 0
var pb_mana_regen: float = 0.00
var mana_regen = (base_mana_regen + fb_mana_regen) * pb_mana_regen

# Attack Damage
var base_ad: float = 1.00
var fb_ad: int = 0
var pb_ad: float = 0.00
var ad = (base_ad + fb_ad) * pb_ad

# Ability Power
var base_ap: float = 1.00
var fb_ap: int = 0
var pb_ap: float = 0.00
var ap = (base_ap + fb_ap) * pb_ap

# Armor
var base_ar: float = 1.00
var fb_ar: int = 0
var pb_ar: float = 0.00
var ar = (base_ar + fb_ar) * pb_ar

# Magic resist
var base_mr: float = 1.00
var fb_mr: int = 0
var pb_mr: float = 0.00
var mr = (base_mr + fb_mr) * pb_mr
