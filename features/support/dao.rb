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

  # def conecta_banco
  #   conn = 'mongodb://aluno:qaninja@ds117719.mlab.com:17719/ninjamotors?retryWrites=false'
  #   client = Mongo::Client.new(conn)
  # end
end
