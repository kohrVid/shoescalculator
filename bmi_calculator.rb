Shoes.app :title => "My Amazing BMI Calculator", :width => 240, :height => 300, :resizable => false do
  background "#fff", :curve => 80, :margin => 10

  stack :margin => 40 do
    subtitle "    BMI"
    para "       height (m)"
    para "\n       weight (kg)"

    @output = para

    @input_height = edit_line :width => 120
    @input_weight = edit_line :width => 120
    @input_height.move(20, 80)
    @input_weight.move(20, 137)

    @output.move(25, 253)

    @height = true

    flow :margin => 40 do
      button "Calculate BMI", :width => "155%" do
        eval_expression
      end

    end

  end


  def calc_bmi
    return @input_weight.text.to_f / (@input_height.text.to_f ** 2)
  end

  def eval_expression
    @output.text = calc_bmi.to_s
  end

end
