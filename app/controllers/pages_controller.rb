class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def home
    redirect_to dashboard_path if current_user
    @books = Book.last(4)
  end

  def dashboard
    @offered_books = current_user.books
    @purchased = Sale.where(buyer: current_user)
    @sales = Sale.where(seller: current_user)
  end
end
