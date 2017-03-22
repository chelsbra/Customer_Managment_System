class FinderController < ApplicationController
  def index
  	@customers = Customer.all
  end

  def alphabetized
  	@customersA = Customer.all.order(name: :desc)
  end

  def missing_email
  	@missing_email = Customer.where("email_address == ''").all()
  end
end
