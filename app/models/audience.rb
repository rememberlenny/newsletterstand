class Audience < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Users.create! row.to_hash
    end
  end
end
