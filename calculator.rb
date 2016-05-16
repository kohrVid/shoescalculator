Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 300, :resizable => false do
  background "#0000aa", :curve => 8, :margin => 15

  stack :margin => 40 do
    @output = edit_line :width => 160

    flow do
      %w(1 2 3 + 4 5 6 - 7 8 9 * . 0 **).each do |op|
        # Character button?
        button op do
          append op
        end
      end

      button "C" do
        @input = ""
        eval_expression
      end

      button "sqrt" do
        @input = Math::sqrt(@input.to_i).to_s
        eval_expression
      end

      button "log" do
        @input = Math::log(@input.to_i, 2).to_s
        eval_expression
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

  # Evaluate the input we've got so far
  #
  def eval_expression
    @input = eval(@input).to_s
    @output.text = @input
  end

end
