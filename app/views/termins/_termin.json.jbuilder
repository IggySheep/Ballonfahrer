json.extract! termin, :id, :title, :beschreibung, :datum, :uhrzeit, :koch, :created_at, :updated_at
json.url termin_url(termin, format: :json)
