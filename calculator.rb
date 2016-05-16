Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 300, :resizable => false do
  background "#0000aa", :curve => 8, :margin => 15, :height => 280

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

      button "\u00f7".encode('utf-8') do
        append "/"
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

  def divide
    characters = @input.split ""

    first_number = ""
    second_number = ""

    second = false

    characters.each do |char|
      if char == "/"
        second = true
        next
      elsif second == false
        first_number << char
      else
        second_number << char
      end
    end

    return first_number.to_f / second_number.to_f
  end

  # Evaluate the input we've got so far
  #
  def eval_expression
    if @input.include?("/")
      @output.text = divide
    else
      @input = eval(@input).to_s
      @output.text = @input
    end
  end

end
