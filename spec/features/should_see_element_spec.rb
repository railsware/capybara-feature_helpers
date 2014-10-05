require 'spec_helper'

describe 'should_see_element', type: :feature do

  before(:all) do
    TestApp.style = <<-STYLE
      .wrapper1 { display: block; }
      .wrapper2 { display: none; }
    STYLE

    TestApp.body = <<-BODY
      <h1 class="title">Hello World</h1>

      <div class="container">
        <div>Content</div>
      </div>

      <div class="wrapper1">
        <div>data1</div>
      </div>

      <div class="wrapper2">
        <div>data2</div>
      </div>
    BODY
  end

  Drivers::TEXT.each do |driver|
    context "#{driver}", driver: driver do
      it 'should see' do
        should_see_element '.container'
      end

      it 'should not see' do
        should_not_see_element '.container2'
      end
    end
  end

  Drivers::JS.each do |driver|
    context "#{driver}", driver: driver do
      it 'should see element when display is block' do
        should_see_element '.wrapper1'
      end

      it 'should not see element when display is none' do
        should_not_see_element '.wrapper2'
      end

      it 'should see element when display is none and visible false given' do
        should_see_element '.wrapper2', visible: false
      end
    end
  end

end
