Given ('Eu estou na página inicial') do
  visit(root_path)
end

Given("eu cliquei na seção do menu {string}") do |string|
  visit(root_path)
  click_link(string)
end

Given("Eu vejo o campo de pesquisa") do
  page.should have_css('.search-bar input')
end

Given("Digito o nome do deputado a ser pesquisado") do
  fill_in('name', :with => 'ADALBERTO CAVALCANTI')
end