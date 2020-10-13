class SearchController < ApplicationController
  def search
    products = Product.search_by_name(params[:query])

    render json: products.pluck(:name)
  end
end
