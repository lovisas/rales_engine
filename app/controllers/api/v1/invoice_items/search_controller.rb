class Api::V1::InvoiceItems::SearchController < ApplicationController
  def index
    render json: InvoiceItem.order("id ASC").where(search_params)
  end

  def show
    render json: InvoiceItem.order("id ASC").where(search_params).first
  end

  private
    def search_params
      params[:unit_price] = price_to_integer(params[:unit_price]) if params[:unit_price]
      params.permit(:id, :item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at)
    end
end
