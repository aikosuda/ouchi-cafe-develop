class CoffeeNote < ApplicationRecord
	belongs_to :user

	attachment :image

	validates :name, presence: true
	validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true
  	validates :acidity, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true
  	validates :scent, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true
  	validates :sweetness, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true
  	validates :bitter_taste, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true
  	validates :rich, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1,
  	}, presence: true

	enum condition:{
    	"---":       0,
    	"豆":        1,
    	"粉":        2,
    	"缶":        3,
    	"カプセル":   4,
    	"カフェ":     5,
  	}
  	enum roasting_degree:{
    	"--":       0,
    	"浅煎り":        1,
    	"中煎り":        2,
    	"深煎り":        3,
  	}
  	enum status:{nonreleased: 0, released: 1}


end
