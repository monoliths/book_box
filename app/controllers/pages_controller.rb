class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def home
    redirect_to dashboard_path if current_user
    @books = Book.last(4)
  end

  def dashboard
    @offered_books = current_user.books
    @purchased = Sale.where(buyer_email: current_user.email)
    @sales = Sale.where(seller_email: current_user.email)
  end
end
