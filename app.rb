require 'sinatra'
require 'sinatra/activerecord'
require 'groupdate'
require 'chartkick'
require 'action_view'

include ActionView::Helpers::NumberHelper

class Medio < ActiveRecord::Base
end

get '/' do
	@medios = (params[:desde].nil? && params[:hasta].nil?) ? Medio.all : Medio.where(periodo: params[:desde].to_date..params[:hasta].to_date)
	erb :index
end
