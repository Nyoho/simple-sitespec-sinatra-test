require 'sitespec/rspec'
require 'myrack'

describe "Sitespec" do
  let(:app) do
    MyRackApp
  end

  %w[
    /
    /css/style.css
    /img/a.png
  ].each do |path|
    describe "GET #{path}", :sitespec do
      it "returns 200" do
        expect(get(path).status).to eq 200
      end
    end
  end
end
