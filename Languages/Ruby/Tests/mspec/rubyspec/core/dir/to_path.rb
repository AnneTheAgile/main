require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/fixtures/common'
require File.dirname(__FILE__) + '/shared/path'

ruby_version_is "1.9" do
  describe "Dir#to_path" do
    before :all do
      DirSpecs.create_mock_dirs
    end

    after :all do
      DirSpecs.delete_mock_dirs
    end

    it_behaves_like(:dir_path, :to_path)
  end
end
