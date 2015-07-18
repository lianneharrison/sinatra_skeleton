# Homepage (Root path)

get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

post '/messages' do
  @message = Message.new(
    author:  params[:author],
    content: params[:content],
    url:     params[:url]
  )
  if @message.save
    redirect '/messages'
  else
    erb :'messages/new'
  end
end

get '/messages/new' do
  erb :'messages/new'
end

get '/messages/:id' do
  @message = Message.find(params[:id])
  erb :'messages/show'
end 

get '/messages/by_author/:author' do
  @author = params[:author]
  @messages = Message.where(author: params[:author])
  erb :'messages/by_author'
end



