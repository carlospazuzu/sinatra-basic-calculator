def fill_calculation_field(operand1, operand2, operation)
  visit '/'
  fill_in('operand1', with: operand1)
  select(operation, from: 'operator')
  fill_in('operand2', with: operand2)
  click_button('calculate')
end


describe 'inputting calculations', type: :feature do
  context 'when filling the form with numeric values' do
    it "performs a sum if '+' sign is chosen on select field" do
      fill_calculation_field(10, 20, '+')
      expect(page).to have_content(30)
    end
    it "performs a subtraction if '-' sign is chosen on select field" do
      fill_calculation_field(17, 20, '-')
      expect(page).to have_content(-3)
    end
    it "performs a multiplication if '*' sign is chosen on select field" do
      fill_calculation_field(7, 8, '*')
      expect(page).to have_content(56)
    end
    it "performs a division if '/' sign is chosen on select field" do
      fill_calculation_field(25, 2, '/')
      expect(page).to have_content(12.5)
    end
  end
end

