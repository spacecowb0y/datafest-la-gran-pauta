require "sinatra/activerecord/rake"
require "./app"
require "csv"
require "iconv"

ActiveRecord::Base.logger = nil

task :give_me_the_data_bitch do

	data =  "#{settings.root}/public/dataset.csv"
	puts "[#{Time.now.strftime("%H:%M:%S")}] Reading files..."

	CSV.foreach(data, :headers => false, :col_sep => ';') do |row|
		row[2] = row[2].include?(" x ") ? "TELEVISION" : row[2] # FIX
		row[4] = row[4].to_s.delete(",").to_f	# FIX

		Medio.create(razon_social: row[0], periodo: row[1], medio: row[2], pauta: row[3], monto: row[4])

		puts "[#{Time.now.strftime("%H:%M:%S")}] Saved record for #{row[0]}"
	end

	puts "[#{Time.now.strftime("%H:%M:%S")}] Ready, Happy Hacking!"

end