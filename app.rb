require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add/form") do
  erb(:add_form)
end

get("/add/result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

get("/sub/form") do
  erb(:sub_form)
end

get("/sub/result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @second_num - @first_num
  erb(:sub_result)
end

get("/mult/form") do
  erb(:mult_form)
end

get("/mult/result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num * @second_num
  erb(:mult_result)
end

get("/div/form") do
  erb(:div_form)
end

get("/div/result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num / @second_num
  erb(:div_result)
end
