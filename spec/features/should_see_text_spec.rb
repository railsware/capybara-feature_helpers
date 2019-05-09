require 'spec_helper'

describe 'should_see_text', type: :feature do

  before(:all) do
    TestApp.body = <<-BODY
      <h1 class="title">Hello World</h1>

      <div class="container">
        <div>Content</div>
        <div>Multilined
          <br />
          content
        </div>
      </div>
    BODY
  end

  Drivers::ALL.each do |driver|
    context driver, driver: driver do
      it 'should see' do
        should_see_text 'Hello World'
      end

      it 'should see' do
        should_see_text 'Multilined content'
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
  end

end
