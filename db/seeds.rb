require 'csv'

puts "Importando departamentos..."
CSV.foreach("db/seeds/depar.csv") do |row|
  Departamento.create! do |departamento|
    departamento.nombre = row[0]
  end
end
puts "departamentos ok..."


puts "Importando municipios..."
CSV.foreach("db/seeds/municipios.csv") do |row|
  Municipio.create! do |municipio|
    municipio.departamento_id = row[0]
    municipio.nombre = row[1]
  end
end
puts "municipios ok..."