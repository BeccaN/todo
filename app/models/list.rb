class List < ApplicationRecord
  has_many :tasks

  def self.search(search)
    if search && search != ""
      @search = search.downcase
      @lists = List.all.where("lower(title) LIKE :search", search: @search)
    else
      @lists = List.all
    end
  end
end
