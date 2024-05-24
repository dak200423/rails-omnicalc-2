class MultiplicationController < ApplicationController
  def show_mult_form
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply_these
    @first_num = params.fetch("first_number_mult").to_f
    @second_num = params.fetch("second_number_mult").to_f
    @result_mult = @second_num * @first_num

    render({ :template => "multiplication_templates/multiply_result" })
  end
end
