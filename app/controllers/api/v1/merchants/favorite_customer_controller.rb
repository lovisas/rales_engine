class Api::V1::Merchants::FavoriteCustomerController < ApplicationController
  def show
    favorite_customer = Customer.favorite_customer(params[:id])

    render json: favorite_customer
  end
end
