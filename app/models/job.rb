class Job < ActiveRecord::Base
  def self.search(area,location)
    url = URI.escape("http://datamx.io/api/action/datastore_search_sql?sql=SELECT * from \"e42a4dca-457a-4995-9f84-075d413a5a74\" WHERE _id = '#{area}';")
    response = RestClient.get(url)
    datos = JSON.parse(response)
    datos['result']['records']
  rescue RestClient::InternalServerError
    "lo que escribiste es incorrecto"
  end
end

#url="http://datamx.io/api/action/datastore_search_sql?sql=SELECT%20*%20from%20%22e42a4dca-457a-4995-9f84-075d413a5a74%22%20WHERE%20_id%20=%20%27"+area+"%27"
#class work
# attr_accesor :nombre_trabajo, :institucion, :sueldo, :clave, :lugar, :contacto_tel, :contacto_correo, :vacante

# def initialize(datos_columnas)
#  self.nombre_trabajo = datos_columnas["Nombre"]
# self.institucion = datos_columnas["Institucion"]
#self.sueldo = datos_columnas["sueldo"]
#self.clave = datos_columnas["Clave del Puesto"]
#self.lugar = datos_columnas["lugar"]
#self.contacto_tel = datos_columnas["telefono"]
#self.contacto_correo= datos_columnas["correo"]
#url="http://datamx.io/api/action/datastore_search_sql?sql=SELECT%20Nombre%20from%20%22e42a4dca-457a-4995-9f84-075d413a5a74%22%20WHERE%20"+clave del Puesto/Remuneracion Salarial+" %20=%20%27"+self.clave+"%27"
#response= RestClient.get(url)
#respuesta =JSON.parse(response)
#if respuesta == "Vacante"
# self.vacante = true
#else
# self.vacante = false
#end
#end

#end
#arr= Array.new
#datos.map |dato|
# arr << work.new(dato)
#end

#return arr
#work.include?('Vacante')
# work institucion << x



