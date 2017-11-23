SELECT victims.name, zombies.name FROM victims
INNER JOIN bitings ON bitings.victim_id = victims.id
INNER JOIN zombies ON zombies.id = bitings.zombie_id;
