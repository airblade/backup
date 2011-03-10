# encoding: utf-8

require File.dirname(__FILE__) + '/../../spec_helper'

describe Backup::Configuration::Database::PostgreSQL do
  before do
    Backup::Configuration::Database::PostgreSQL.defaults do |db|
      db.name               = 'mydb'
      db.username           = 'myuser'
      db.password           = 'mypassword'
      db.host               = 'myhost'
      db.port               = 'myport'
      db.socket             = 'mysocket'
      db.skip_tables        = %w[my tables]
      db.only_tables        = %w[my other tables]
      db.additional_options = %w[my options]
    end
  end

  it 'should set the default PostgreSQL configuration' do
    db = Backup::Configuration::Database::PostgreSQL
    db.name.should               == 'mydb'
    db.username.should           == 'myuser'
    db.password.should           == 'mypassword'
    db.host.should               == 'myhost'
    db.port.should               == 'myport'
    db.socket.should             == 'mysocket'
    db.skip_tables.should        == %w[my tables]
    db.only_tables.should        == %w[my other tables]
    db.additional_options.should == %w[my options]
  end
end
