require 'sitespec/rspec'
require 'myrack'
require 'pry'
require 'pry-byebug'

describe "Sitespec" do
  let(:app) do
    MyRackApp
  end

  %w[
    /
    /css/style.css
    /img/a.png
    /img/simple-image1.png
    /img/simple-image2.png
  ].each do |path|
    describe "GET #{path}", :sitespec do
      binding.pry
      # break Sitespec::Artifact#create
      it "returns 200" do
        expect(get(path).status).to eq 200
      end
    end
  end
end
