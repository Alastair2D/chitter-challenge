require 'pg'

class Peep 

  def self.all 
    if ENV['RACK ENV'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
      result = connection.exec("SELECT * FROM peeps")
      result.map{ |peep| peep["peep"] }
  end

  def self.create(peep)
    if ENV['RACK ENV'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
    result = connection.exec("INSERT INTO peeps (peep) VALUES('#{peep}') RETURNING id, peep;")
    Peep.new(id: result[0]['id'],  peep: result[0]['peep']) 
  end

  def initialize(id:, peep:)
    @id = id
    @peep = peep
  end

  attr_reader :id, :peep





end

