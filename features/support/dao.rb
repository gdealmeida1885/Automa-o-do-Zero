# frozen_string_literal: true

require 'mongo'

class DAO
  Mongo::Logger.logger = Logger.new('log/mongo.log')

  def remover_usuario(email)
    conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors?retryWrites=false'

    client = Mongo::Client.new(conn)

    usuario_collection = client[:users]

    usuario_collection.delete_one('profile.email' => email)
  end

  def remove_anuncio(versao_veiculo)
    conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors?retryWrites=false'

    client = Mongo::Client.new(conn)

    anuncios_collection = client[:sells]

    anuncios_collection.delete_many('desc' => versao_veiculo)
  end

  # def conecta_banco
  #   conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors?retryWrites=false'
  #   client = Mongo::Client.new(conn)
  # end
end
