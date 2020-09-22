class Task < ApplicationRecord
    def self.csv_attributes
        ["name", "description", "created_at", "updated_at" ]
    end
    
    def self.generate_csv
        CSV.generate(headers: true) do |csv|
            csv << csv_attributes
            all.each do |task|
                csv << csv_attributes.map{|attr| task.send(attr)}
            end
        end
    end
    
    has_one_attached :image
    validates :name, presence: true
    validates :name, length: { maximum: 30 }
    
    belongs_to :user
    scope :recent, -> { order(created_at: :desc) }
end
