require_relative 'test_helper'
require_relative "pdf_pricer"

describe PDF do
  let(:book1) {PDF.new(600, 3, 1, true, true)}
  let(:book2) {PDF.new(400, 2, 1, false, true)}

  it "test 1" do
    expect(book1.bind_book_price(true)).to eq(10000)
  end

  it "test 2" do
    expect(book2.bind_book_price(false)).to eq(8000)
  end

  
end