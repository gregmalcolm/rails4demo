# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Wizard.delete_all
Wizard.create name: 'Gandalf', alignment: 'good', spells: ['Magic Missile', 'Heal']
Wizard.create name: 'Souron', alignment: 'evil', spells: ['Magic Missile', 'Stabby Stabby', 'Hoover']
Wizard.create name: 'Willow', alignment: 'good', spells: ['Sanctorium', 'Simulated Sunlight', 'Time Loop']
Wizard.create name: 'Evil Willow', alignment: 'evil', spells: ['Sphere of Infinite Agonies', 'Living Flame', 'Vine Bondage']
Wizard.create name: 'Rincewind', alignment: 'neutral', spells: ['Run Away']
Wizard.create name: 'Bellatrix', alignment: 'evil', spells: ['Avada Kedavra', 'Accio']

Doctor.delete_all
Companion.delete_all
Doctor.create actor: 'William Hartnell', number: 1
Companion.create name: 'Susan Foreman', skills: ['getting lost', 'painting'], doctor: Doctor.last

Doctor.create actor: 'Patrick Troughton', number: 2
Companion.create name: 'Jamie McCrimmon', skills: ['postulating'], doctor: Doctor.last

Doctor.create actor: 'Jon Pertwee', number: 3
Companion.create name: 'Jo Grant', skills: ['skulking'], doctor: Doctor.last
Companion.create name: 'Liz Shaw', skills: ['recapping'], doctor: Doctor.last

Doctor.create actor: 'Tom Baker', number: 4
Companion.create name: 'Sarah Jane Smith', skills: ['survival'], doctor: Doctor.last
Companion.create name: 'K-9', skills: ['talking', 'marking hydrants'], doctor: Doctor.last

Doctor.create actor: 'Peter Davison', number: 5
Companion.create name: 'Adric', skills: ['dying', 'whining'], doctor: Doctor.last
Companion.create name: 'Tegan Jovanka', skills: ['getting in the way'], doctor: Doctor.last

Doctor.create actor: 'Colin Baker', number: 6
Companion.create name: 'Peri', skills: ['navigation'], doctor: Doctor.last

Doctor.create actor: 'Sylvester McCoy', number: 7
Companion.create name: 'Ace', skills: ['poetry'], doctor: Doctor.last

Doctor.create actor: 'Paul McGann', number: 8
Companion.create name: 'Grace Holloway', skills: ['surgery', 'opera'], doctor: Doctor.last

Doctor.create actor: 'Christopher Eccleston', number: 9
Companion.create name: 'Jack Harkness', skills: ['not dying', 'leadership', 'pistols'], doctor: Doctor.last

Doctor.create actor: 'David Tennant', number: 10
Companion.create name: 'Rose Tyler', skills: ['waking darleks', 'singing', 'pouting', 'bad wolf'], doctor: Doctor.last
Companion.create name: 'Mickey Smith', skills: ['wimpering', 'pouting', 'computers'], doctor: Doctor.last
Companion.create name: 'Martha Jones', skills: ['medical', 'technology'], doctor: Doctor.last
Companion.create name: 'Donna Noble', skills: ['being annoying', 'talking', 'time lord acolyte'], doctor: Doctor.last

Doctor.create actor: 'Matt Smith', number: 11
Companion.create name: 'Amy Pond', skills: ['impersonation'], doctor: Doctor.last
Companion.create name: 'Rory Williams', skills: ['nursing', 'rome'], doctor: Doctor.last
Companion.create name: 'River Song', skills: ['tardis pilot', 'assassin', 'thief', 'accedemia'], doctor: Doctor.last
Companion.create name: 'Clara Oswald', skills: ['souffles', 'nanny'], doctor: Doctor.last
