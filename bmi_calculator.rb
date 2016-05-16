Shoes.app :title => "My Amazing BMI Calculator", :width => 240, :height => 300, :resizable => false do
  background "#fff", :curve => 80, :margin => 10

  stack :margin => 40 do
    subtitle "    BMI"
    para "           height"
    para "\n          weight"

    @output = para

    @input_height = edit_line :width => 120
    @input_weight = edit_line :width => 120
    @input_height.move(20, 80)
    @input_weight.move(20, 120)

    @output.move(100, 250)

    @height = true

    puts "hello"

    flow do
      # %w(0 1 2 3 4 5 6 7 8 9).each do |op|
      #   button op do
      #     append op
      #   end
      # end

      button "        =        " do
        eval_expression
      end

    end

  end

  # Stick a string on the end of our input
  #
  # def append(s)
  #   if @input.nil?
  #     @input = ""
  #   end
  #   @input += s
  #   @output.text = @input
  # end

  def calc_bmi
    return @input_weight.text.to_f / (@input_height.text.to_f ** 2)
  end

  # Evaluate the input we've got so far
  #
  def eval_expression
    # @input = eval(@input).to_s
    @output.text = calc_bmi.to_s
  end

end
