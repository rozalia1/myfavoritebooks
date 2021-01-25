Given(/^the following books exist:$/) do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |book|
        Book.create!(book)
    end
  end