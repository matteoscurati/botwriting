require "rails_helper"

RSpec.describe Post, type: :model do
  let(:post_content) { "Once more unto the breach, dear friends" }
  let(:post_word_count) { post_content.split.count }

  describe "#content=" do
    it "updates #word_count" do
      subject.content = post_content

      expect(subject.word_count).to eq(post_word_count)
    end
  end
end
