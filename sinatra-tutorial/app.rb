

# app.rb
#ライブラリの読み込み
require 'sinatra'
require 'sinatra/reloader'
require 'fileutils'
require 'sinatra/cookies'

#Sinatraの設定
set :public_folder,'public'
enable :sessions

get '/' do
  erb :index
end

#get '/hello' do
#  # query string から取得
  # @name = params[:name]
#  session[:name] =  params[:name]

#  erb :hello
# end

# get '/time' do
#  Time.now.to_s
# end



get '/index' do
  erb :form
end




#-----------------------
#Contact Form
#-----------------------
post '/form_output2' do
  
  @name = params[:name]
  @email = params[:email]
  @comments = params[:comments]
  erb :form_output2


   #ファイルに保存する
  File.open("form.txt", mode = "a"){|f|
    f.write("#{@name},#{@email},#{@comments}\n")
  }
   erb :form_output2

  end
#--------------------------------------------
#ニュースレター
#--------------------------------------------
post '/subscribe' do
  
  @email = params[:email]
  
  
     #ファイルに保存する
    File.open("subscribe.txt", mode = "a"){|f|
      f.write("#{@email}\n")
    }
     erb :form_output2
  
    end


# get '/upload' do
#  erb :upload
# end 



# post '/upload' do
 # @file_name = params[:img][:filename]
 # FileUtils.mv(params[:img][:tempfile], "./public/images/#{@file_name}")
 # erb :uploaded
 # end