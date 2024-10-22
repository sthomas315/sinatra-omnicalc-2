require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_sub = params.fetch("first_subtract").to_f
  @second_sub = params.fetch("second_subtract").to_f

  @result_sub = @first_sub - @second_sub
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_mul = params.fetch("multiply_first").to_f
  @second_mul = params.fetch("multiply_again").to_f

  @result_mul = @first_mul * @second_mul
  erb(:mult_result)
end

get("/divide") do
  erb(:divform)
end

get("/wizard_divide") do
  erb(:div_result)
end
