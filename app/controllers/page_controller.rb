class PageController < ApplicationController
  def register_address
  	Mailaddress.create(address: params[:address])
  	redirect_to :back
  end

  def inquiry
    @inquiry = Inquiry.new
  end

  def inquiry_create
    @inquiry = Inquiry.create(params[:inquiry])
    redirect_to controller: :page, action: :have_inquiried
  end

  def regulation
  end

end
