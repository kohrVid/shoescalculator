require "mathn"
Shoes.app :title => "My Amazing Calculator", :width => 240, :height => 300, :resizable => false do
  background "#000"..."#00a", :curve => 8, :margin => 15, :height => 280
  
  stack :margin => 40 do
    @output = edit_line :width => 160, margin: [0, 0, 0, 10]

    flow do
      %w(7 8 9).each do |op|
	stack width: 0.25 do
	  button op do
	    append op
	  end
	end
      end
      stack width: 0.25 do
	button "C" do
	  @input = ""
	  eval_expression
	end
      end
    end
    
    flow do
      %w(4 5 6).each do |op|
	stack width: 0.25 do
	  button op do
	    append op
	  end
	end
      end
      stack width: 0.25 do
	button "\u00f7".encode("utf-8"), width: 1.0 do
	  append "/"
	end
      end
    end
    
    flow do
      %w(1 2 3).each do |op|
	stack width: 0.25 do
	  button op do
	    append op
	  end
	end
      end
      stack width: 0.25 do
	button "\u00d7".encode("utf-8"), width: 1.0 do
	  append "*"
	end
      end
    end
    
    flow do
      %w(. 0 + -).each do |op|
	stack width: 0.25 do
	  button op do
	    append op
	  end
	end
      end
    end

    flow do
      stack width: 0.25 do
	button "log#{"\u2082".encode("utf-8")}x", width: 1.0 do
	  @input = Math::log(@input.to_f, 2).to_s
	  eval_expression
	end
      end
      stack width: 0.25 do
	button "x\u207f".encode("utf-8"), width: 1.0 do
	  append "**"
	end
      end
      stack width: 0.25 do
	button "\u221A".encode('utf-8'), width: 1.0 do
	  @input = Math::sqrt(@input.to_f).to_s
	  eval_expression
	end
      end
      stack width: 0.25 do
	button "=" do
	  eval_expression
	end
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
    if @input.to_i.zero?
      @input = eval(@input).to_s
    else
      @input = eval(@input).to_f.to_s
    end
    @output.text = @input
  end
end
