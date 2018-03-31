class Catergory < ApplicationRecord
  has_and_belongs_to_many :category
  has_and_belongs_to_many :parents, class_name: 'Catergory', join_table: :associations, foreign_key: :child_id, association_foreign_key: :parent_id
  has_and_belongs_to_many :children, class_name: 'Catergory', join_table: :associations, foreign_key: :parent_id, association_foreign_key: :child_id
end
