# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Wizard.create name: 'Gandalf', alignment: 'good', spells: ['Magic Missile', 'Heal']
Wizard.create name: 'Souron', alignment: 'evil', spells: ['Magic Missile', 'Stabby Stabby', 'Hoover']
Wizard.create name: 'Willow', alignment: 'good', spells: ['Sanctorium', 'Simulated Sunlight', 'Time Loop']
Wizard.create name: 'Evil Willow', alignment: 'evil', spells: ['Sphere of Infinite Agonies', 'Living Flame', 'Vine Bondage']
Wizard.create name: 'Rincewind', alignment: 'neutral', spells: ['Run Away']
Wizard.create name: 'Bellatrix', alignment: 'evil', spells: ['Avada Kedavra', 'Accio']

