get '/' do
  @categories = Category.all
  erb :index
end

get '/create' do
  @categories = Category.all
  erb :create
end

post '/create' do
  puts "Params: #{params}"
  @post = Post.create(params)
  @post.create_secret_key
  erb :post
end

get '/update/:key' do
  @secret_key = params[:key]
  @categories = Category.all
  erb :update
end

post '/update/:key' do
  secret_key = params[:key]
  puts secret_key
  update_values = {}
  attr_names = Post.attribute_names[1..-1]
  attr_names.each do |attribute|
    key = attribute.to_sym
    value = params[attribute.to_sym]
    update_values[key] = value
  end
  puts "Update values: #{update_values}"
  puts "Params: #{params}"
  @post = Post.where('secret_key = ?', secret_key).first  
  @post.update_attributes(update_values)
  erb :post
end

get '/:category' do
  cat_name = params[:category]
  return "No category exists" if Category.find_by_name(cat_name) == nil
  @category = Category.find_by_name(cat_name)
  erb :category
end

get '/post/:num' do
  post_num = params[:num]
  return "No post exists" if Post.find(post_num) == nil
  @post = Post.find(post_num)
  erb :post
end
