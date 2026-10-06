# This is the location for character statistics and the logic that goes into it
class_name char_stats

# Health Statistics
var base_health: float = 100.00
var flat_bonus_health: int = 0
var percent_bonus_health: float = 0.00
var health = (base_health + flat_bonus_health) * percent_bonus_health

# Health Regen
var base_health_regen: float = 100.00
var flat_bonus_health_regen: int = 0
var percent_bonus_health_regen: float = 0.00
var health_regen = (base_health_regen + flat_bonus_health_regen) * percent_bonus_health_regen

# Stamina
var base_stamina: float = 100.00
var flat_bonus_stamina: int = 0
var percent_bonus_stamina: float = 0.00
var stamina = (base_stamina + flat_bonus_stamina) * percent_bonus_stamina

# Stamina Regen
var base_stamina_regen: float = 100.00
var flat_bonus_stamina_regen: int = 0
var percent_bonus_stamina_regen: float = 0.00
var stamina_regen = (base_stamina_regen + flat_bonus_stamina_regen) * percent_bonus_stamina_regen

# Mana
var base_mana: float = 100.00
var flat_bonus_mana: int = 0
var percent_bonus_mana: float = 0.00
var mana = (base_mana + flat_bonus_mana) * percent_bonus_mana

# Mana Regen
var base_mana_regen: float = 100.00
var flat_bonus_mana_regen: int = 0
var percent_bonus_mana_regen: float = 0.00
var mana_regen = (base_mana_regen + flat_bonus_mana_regen) * percent_bonus_mana_regen
