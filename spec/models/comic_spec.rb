require 'spec_helper'

describe Comic  do
  let(:comic) {Comic.create}
  it 'should have an id' do
    comic.should respond_to(:user_id)
    comic.user_id.should_not = nil
  end

  it 'should have a url' do
    comic.should respond_to(:url)
    comic.url.should_not = nil
  end

  it 'should belong to user' do
    comic.should belong_to(:user)
    comic.user.should_not = nil
  end

  it 'should have links' do
    comic.should respond_to(:link)
    comic.link.should_not = nil
  end
end