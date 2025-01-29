require 'sinatra'

# 投稿を保存するための配列
posts = []

# ホームページ
get '/' do
  erb :index, locals: { posts: posts }
end

# 投稿を受け付ける
post '/post' do
  posts << params[:content]
  redirect '/'
end



