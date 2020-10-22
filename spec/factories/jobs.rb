FactoryBot.define do
    factory :job do
      name {'テスト求人'}
      salary {'テスト給与'}
      working_hours {'テスト時間'}
      place {'テスト場所'}
      feature {'テスト特徴'}
      catch {'テストキャッチ'}
      user
    end
  end
  