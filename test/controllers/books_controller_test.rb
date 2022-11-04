require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { Lop: @book.Lop, Ma_HS: @book.Ma_HS, Ma_Sach: @book.Ma_Sach, NgayMuon: @book.NgayMuon, NgayTra: @book.NgayTra, So_BM: @book.So_BM, So_Ngay: @book.So_Ngay, Ten_HS: @book.Ten_HS, Ten_Sach: @book.Ten_Sach, Ten_TacGia: @book.Ten_TacGia, Tu_Sach: @book.Tu_Sach } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { Lop: @book.Lop, Ma_HS: @book.Ma_HS, Ma_Sach: @book.Ma_Sach, NgayMuon: @book.NgayMuon, NgayTra: @book.NgayTra, So_BM: @book.So_BM, So_Ngay: @book.So_Ngay, Ten_HS: @book.Ten_HS, Ten_Sach: @book.Ten_Sach, Ten_TacGia: @book.Ten_TacGia, Tu_Sach: @book.Tu_Sach } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
