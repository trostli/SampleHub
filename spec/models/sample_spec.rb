require 'spec_helper'

describe Sample do	

	let(:sample_attributes) {
		{title: "Chicago House Stab", url: "http://soundclound.com/trostli/housestab"}
	}

	context "#save" do

		let(:sample) {Sample.new}

		it "raises and error is sample URL is missing" do
			expect {user.save!}.to raise_error
		end

		it "creates a new sample when title, and URL is supplied" do
			sample.title = sample_attributes[:title]
			sample.url = sample_attributes[:url]
			expect { sample.save }.to change(Sample, :count).by(1)
			expect(Sample.last.title).to eql(sample_attributes[:title])
		end
	end

end