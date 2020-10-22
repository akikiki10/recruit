FactoryBot.define do
    factory :user do
      name {'テストユーザー'}
      email {'tast1@example.com'}
      password {'password'}
      company {'テスト会社'}
      business {'テスト事業'}
    end
  end