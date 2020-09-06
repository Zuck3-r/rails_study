FactoryBot.define do
    factory :task do
        name { 'テストを描く' }
        description { 'RSpec&Capybara&FactoryBotの準備' }
        user
    end
end