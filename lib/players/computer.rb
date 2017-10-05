module Players
  class Computer < Player
    # your code here

    def move(board)
    	if board.taken("5") #middle taken first
    		if board.taken("1") != true #turn1
    			"1"
    		else	
    			if board.taken("7") #turn2
    				if board.taken("3") != true
    					"3"
    				else 
    					if board.taken("2") # turn3
    						if board.taken("8") != true
    							"8"
    						else 
    							if board.taken("4") #turn4
    								if board.taken("6") != true
    									"6"
    								end
    							elsif board.taken("6")
    								 if board.taken("4") != true
    								 	"4"
    								 end
    							elsif board.taken("9")
    								"4"
    							end
    						end
    					elsif board.taken("4") # turn3
    						if board.taken("6") != true 
    							"6"
    						else
    							if board.taken("9") #turn4
    								if board.taken("2") != true
    									"2"
    								end
    							elsif board.taken("2")
    								 if board.taken("9") != true
    								 	"9"
    								 end
    							elsif board.taken("8")
    								"2"
    							end
    						end
    					elsif board.taken("6") # turn3
    						if board.taken("4") != true 
    							"4"
    						else
    							if board.taken("2") #turn4
    								if board.taken("8") != true
    									"8"
    								end
    							else
    								"2"
    							end
    						end
    					elsif board.taken("8") # turn3
    						"2"
    					end
    				end	      						    											      						    										
    			elsif board.taken("2")
    				"8"
    			elsif board.taken("3")
    				"7"
    			elsif board.taken("4")
    				"6"
    			elsif board.taken("6")
    				"4"
    			elsif board.taken("7")
    				"3"
    			elsif board.taken("8")
    				"2"
    			elsif board.taken("9")
    				"1"
    			end
    		end
    	end    					
  	end

  end
end