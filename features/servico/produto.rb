class Produto
  def self.cadastrar_produto
    $titulo = "#{Faker::Commerce.product_name}"
    $preco =  "#{Faker::Commerce.price}"
    $descricao = "#{Faker::ChuckNorris.fact}"
    $imagem = "#{Faker::LoremFlickr.image}"
    $categoria = "#{Faker::IndustrySegments.industry}"
    endpoint = OpenStruct.new
    endpoint['title'] = $titulo
    endpoint['price'] = $preco
    endpoint['description'] = $descricao
    endpoint['image'] = $imagem
    endpoint['category'] = $categoria 
    endpoint.marshal_dump
  end
end