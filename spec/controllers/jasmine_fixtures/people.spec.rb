#   Copyright (c) 2010-2011, Diaspora Inc.  This file is
#   licensed under the Affero General Public License version 3 or later.  See
#   the COPYRIGHT file.

require 'spec_helper'

describe PeopleController do
  describe '#index' do
    before do
      sign_in :user, bob
    end

    it "generates a jasmine fixture", :fixture => true do
      get :index
      save_fixture(html_for("body"), "empty_people_search")
    end
    it "generates a jasmine fixture", :fixture => true do
      get :index, :id => "sample@diaspor.us"
      save_fixture(html_for("body"), "pending_external_people_search")
    end
  end
end
