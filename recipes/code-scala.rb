include_recipe 'development-environment::code'

include_recipe 'development-environment::user-vivi'

bash 'code ext install scala-lang.scala' do
  code 'sudo -u vivi code --install-extension scala-lang.scala'
end

bash 'code ext install dragos.scala-lsp' do
  code 'sudo -u vivi code --install-extension dragos.scala-lsp'
end
