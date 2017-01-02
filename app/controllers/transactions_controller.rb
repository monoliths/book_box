class TransactionsController < ApplicationController
  def create
    book = Book.find_by!(id: params[:id])
    @sale = book.sales.create(
      amount: book.price,
      seller: book.user,
      buyer: current_user,
			stripe_token: params[:stripeToken])
    @sale.process!

    if @sale.finished?
      redirect_to pickup_url(guid: @sale.guid)
    else
      redirect_to book_path(book), notice: @error
    end
  end

  def pickup
    @sale = Sale.find_by!(guid: params[:guid])
    @book = @sale.book
  end
end
