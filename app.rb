require 'sinatra'
require 'sinatra/activerecord'
require 'groupdate'
require 'chartkick'
require 'action_view'

include ActionView::Helpers::NumberHelper

class Registro < ActiveRecord::Base
end

get '/' do
	@registros = (params[:desde].nil? && params[:hasta].nil?) ? Registro.all : Registro.where(periodo: params[:desde].to_date..params[:hasta].to_date)
	erb :index
end

get '/entidades' do
end