json.array!(@wizards) do |wizard|
  json.extract! wizard, :name, :alignment, :spells, :bag_of_holding
  json.url wizard_url(wizard, format: :json)
end