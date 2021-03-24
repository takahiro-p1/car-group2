require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe 'ユーザー登録' do
    context 'ユーザー登録' do
      it '正しく登録できること' do
        a = User.new(
          name: '田中 太郎',
          email: 'taro.tanaka@example.com',
          undergraduate: '経営学部',
          grade: 2
        )

        expect(a).to be_valid
        a.save

        b = User.find(1);

        expect(b.name).to eq('田中 太郎')
        expect(b.email).to eq('taro.tanaka@example.com')
        expect(b.undergraduate).to eq(25)
        expect(b.grade).to eq(2)
      end
    end
  end
end
