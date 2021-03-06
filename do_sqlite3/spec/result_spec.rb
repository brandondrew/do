# encoding: utf-8

require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require 'data_objects/spec/result_spec'

# splitting the descibe into two separate declaration avoids
# concurrent execution of the "behaves_like ....." calls
# which would lock the database

# TODO
# the locked database created a deadlock which is worth exploring since
# such situation could appear in the wild too
describe DataObjects::Sqlite3::Result do
  behaves_like 'a Result'
end

describe DataObjects::Sqlite3::Result do
  behaves_like 'a Result which returns inserted key with sequences'
end
