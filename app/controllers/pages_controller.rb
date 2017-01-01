class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def home
    redirect_to dashboard_path if current_user
    @books = Book.last(4)
  end

  def dashboard
    @offered_books = current_user.books
    @purchased_books = nil
    @sold_books = nil
  end
end
