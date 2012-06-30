require "helper"

class Gibblet < ActiveRecord::Base
  include Blobbet
  blobbet :size
  blobbet :ratio, blob: "stuff"
  blobbet :city
end

describe Blobbet do

  before(:all) do
    ActiveRecord::Base.establish_connection( adapter: "sqlite3", database: "db/blobbet_test.db")
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  after(:all) do
    File.delete "db/blobbet_test.db" rescue false
  end

  it "does not break anything" do
    Gibblet.new.should be_instance_of(Gibblet)
    g = Gibblet.create name: "Gooney"
    Gibblet.first.name.should eq("Gooney")
  end

  it "stores attributes in ActiveRecord blobs" do
    g = Gibblet.create name: "Looney", size: 12, city: "Chicago", ratio: 1.2
    h = Gibblet.where( name: "Looney" ).first
    h.size.should eq(12)
    h.city.should eq("Chicago")
    h.ratio.should eq(1.2)
  end

end
