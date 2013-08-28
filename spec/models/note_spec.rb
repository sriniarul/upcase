require 'spec_helper'

describe Note do
  context 'associations' do
    it { should belong_to(:user) }
  end

  context 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:user_id) }
  end

  context '#body_html' do
    it 'renders body as markdown' do
      note = build(:note,  body: 'Some *awesome* markdown')

      expect(note.body_html).to eq '<p>Some <em>awesome</em> markdown</p>'
    end
  end
end