Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 240, :resizable => false do
  background "#333", :curve => 10, :margin => 25

  stack :margin => 40 do
    @output = edit_line :width => 160
    @input_height = edit_line :width => 50
    @input_weight = edit_line :width => 50

    @height = true

    puts "hello"

    flow do
      %w(0 1 2 3 4 5 6 7 8 9).each do |op|
        button op do
          append op
        end
      end

      button "height" do

      end

      button "=" do
        eval_expression
      end
    end

  end

  # Stick a string on the end of our input
  #
  def append(s)
    if @input.nil?
      @input = ""
    end
    @input += s
    @output.text = @input
  end

  def calc_bmi
    return @input_weight / (@input_height ** 2)
  end

  # Evaluate the input we've got so far
  #
  def eval_expression
    # @input = eval(@input).to_s
    @output.text = calc_bmi
  end

end
