require 'spec_helper'

describe Comic  do
  let(:comic) {Comic.create}
  it 'should have an id' do
    comic.should respond_to(:user_id)
    comic.user_id.should_not = nil
  end

  it 'should have a url' do
    comic.should respond_to(url)
    comic.url.should_not = nil
  end

  it 'should be able to add comics' do
    comic.valid?.should be_true
  end

end