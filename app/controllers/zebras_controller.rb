class ZebrasController < ApplicationController
  include ActionView::Helpers::NumberHelper
  def home 
    render({ :template => "page_templates/home"})
  end 
  def square
    number = params[:number].to_f
    @squared_number = number ** 2
    render({ :template => "page_templates/square_result"})
  end 
  def new_square
    number = params[:number].to_f
    @squared_number = number **2
    render({ :template => "page_templates/square_new"})
  end 
  def root
    number = params[:number].to_f
    @square_root = number ** 0.5
    render({ :template => "page_templates/root"})
  end
  def root_results
    number = params[:number].to_f
    @square_root = number ** 0.5
    render({ :template => "page_templates/root_result"})
  end 
  def payment
    apr = params[:number1].to_f
    years = params[:number2].to_f
    principal = params[:number3].to_f
    render({ :template => "page_templates/payment"})
  end 
  def payment_results
    apr = params[:number1].to_f / 100 / 12
    years = params[:number2].to_i
    principal = params[:number3].to_f
    months = years * 12

    @monthly_payment = (principal * apr / (1 - (1 + apr)**-months)).round(2)
    render({ :template => "page_templates/payment_result"})
  end 
  def random
    min = params[:min].to_f
    max = params[:max].to_f
    render({ :template => "page_templates/random"})
  end 
  def random_results
    min = params[:min].to_f
    max = params[:max].to_f
    @output = rand(min..max)
    render({ :template => "page_templates/random_result"})
  end 
end 
