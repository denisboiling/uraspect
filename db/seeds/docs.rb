DocCategory.reset_column_information
Doc.reset_column_information

2.times { |t| FactoryGirl.create(:doc_category, position: t + 1) }
DocCategory.all.push(nil).each do |category|
  3.times { FactoryGirl.create(:doc, category: category) }
end
