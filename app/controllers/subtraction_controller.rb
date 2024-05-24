class SubtractionController < ApplicationController
  def show_sub_form
    render({ :template => "subtraction_templates/sub_form" })
  end

  def subtract_these
    @first_num = params.fetch("first_number_sub").to_f
    @second_num = params.fetch("second_number_sub").to_f
    @result_sub = @second_num - @first_num

    render({ :template => "subtraction_templates/sub_results" })
  end
end
