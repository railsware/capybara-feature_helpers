require 'spec_helper'

describe 'should_see_text', type: :feature do

  TestApp.body = <<-BODY
    <h1 class="title">Hello World</h1>

    <div class="container">
      <div>Content</div>
    </div>
  BODY

  it 'should see' do
    should_see_text 'Hello World'
  end

  it 'should not see' do
    should_not_see_text 'Goodbye World'
  end

  it 'should see with css selector' do
    should_see_text 'Hello World', '.title'
  end

  it 'should not see with css selector' do
    should_not_see_text 'Goodbye World', '.container'
  end

end
