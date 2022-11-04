require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Lop", with: @book.Lop
    fill_in "Ma hs", with: @book.Ma_HS
    fill_in "Ma sach", with: @book.Ma_Sach
    fill_in "Ngaymuon", with: @book.NgayMuon
    fill_in "Ngaytra", with: @book.NgayTra
    fill_in "So bm", with: @book.So_BM
    fill_in "So ngay", with: @book.So_Ngay
    fill_in "Ten hs", with: @book.Ten_HS
    fill_in "Ten sach", with: @book.Ten_Sach
    fill_in "Ten tacgia", with: @book.Ten_TacGia
    fill_in "Tu sach", with: @book.Tu_Sach
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Lop", with: @book.Lop
    fill_in "Ma hs", with: @book.Ma_HS
    fill_in "Ma sach", with: @book.Ma_Sach
    fill_in "Ngaymuon", with: @book.NgayMuon
    fill_in "Ngaytra", with: @book.NgayTra
    fill_in "So bm", with: @book.So_BM
    fill_in "So ngay", with: @book.So_Ngay
    fill_in "Ten hs", with: @book.Ten_HS
    fill_in "Ten sach", with: @book.Ten_Sach
    fill_in "Ten tacgia", with: @book.Ten_TacGia
    fill_in "Tu sach", with: @book.Tu_Sach
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
