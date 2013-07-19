DocCategory.reset_column_information
FactoryGirl.create(:bear_partner, position: 1)
9.times { |t| FactoryGirl.create(:partner, position: t + 2) }
