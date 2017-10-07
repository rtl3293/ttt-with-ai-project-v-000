module Players
  class Computer < Player
    # your code here



    def move(board)
    	turn_count = board.turn_count
    	if board.taken?("5") #middle taken first
    		if board.taken?("1") != true #turn
    			"1"
    		else
    			#binding.pry
    			if board.route == 2
    				if board.taken?("8") != true 
    					"8"
    				else 
    					if board.taken?("3") # turn3
    						if board.taken?("7") != true
    							"7"
    						else 
    							if board.taken?("9") #turn4
    								if board.taken?("6") != true
    									"6"
    								end
    							elsif board.taken?("6") || board.taken?("4")
    								 	"9"
    							end
    						end
    					elsif board.taken?("4") # turn3
    						if board.taken?("6") != true 
    							"6"
    						else
    							if board.taken?("3") || board.taken?("9") #turn4
    								"7"
    							elsif board.taken?("7")
    								"3"
    							end
    						end
    					elsif board.taken?("6") # turn3
    						if board.taken?("4") != true 
    							"4"
    						else
    							if board.taken?("7") #turn4
    								"3"
    							else
    								"7"
    							end
    						end
    					elsif board.taken?("7") # turn3
    						if board.taken?("3") != true 
    							"3"
    						else
    							if board.taken?("6") #turn4
    								"4"
    							else
    								"6"
    							end
    						end
    					elsif board.taken?("9")
    						if board.taken?("3") != true 
    							"3"
    						else
    							if board.taken?("6") || board.taken?("7")#turn4
    								"4"
    							else
    								"6"
    							end
    						end    							
    					end
    				end	     				
    			elsif board.route == 3
    				if board.taken?("7") != true && turn_count == 3
    					"7"
    				else 
    					if board.taken?("2") # turn3
    						if board.taken?("8") != true
    							"8"
    						else 
    							if board.taken?("4") || board.taken?("9") #turn4
    								if board.taken?("6") != true
    									"6"
    								end
    							elsif board.taken?("6")
    								 	"4"
    							end
    						end
    					elsif board.taken?("4") # turn3
    						if board.taken?("6") != true 
    							"6"
    						else
    							if board.taken?("2") || board.taken?("9") #turn4
    								"8"
    							elsif board.taken?("8")
    								"2"
    							end
    						end
    					else board.taken?("6") # turn3
    						"4"						
    					end
    				end	
    			elsif board.route == 4
    				if board.taken?("6") != true && turn_count == 3
    					"6"
    				else 
    					if board.taken?("2") # turn3
    						if board.taken?("8") != true
    							"8"
    						else 
    							if board.taken?("3") || board.taken?("9") #turn4
    								"7"
    							elsif board.taken?("7")
    								"3"
    							end
    						end
    					elsif board.taken?("3") # turn3
    						if board.taken?("7") != true 
    							"7"
    						else
    							if board.taken?("2") || board.taken?("8") #turn4
    								"9"
    							elsif board.taken?("9")
    								"2"
    							end
    						end
    					elsif board.taken?("7")# turn3 
    						if board.taken?("3") != true
    							"3"
    						else
    							if board.taken?("2")
    								"9"
    							elsif board.taken?("7") || board.taken?("9")
    								"2"
    							end
    						end																													
    					elsif board.taken?("8")
    						if board.taken?("2") != true
    							"2"
    						else
    							if board.taken("3")
    								"7"
    							else
    								"3"
    							end
    						end
    					else
    						if board.taken?("3") != true
    							"3"
    						else
    							"7"
    						end
    					end
    				end
    			elsif board.route == 6
    				#binding.pry
    				if board.taken?("4") != true && turn_count == 3
    					"4"
    				else
    					if board.taken?("7")
    						#binding.pry
    						if board.taken?("3") != true
    							"3"
    						else		
    							if board.taken?("8")
    								"2"
    							else
    								"8"
    							end
    						end
    					else
    						"7"
    					end
    				end		
    			elsif board.route == 7#turn2
    				if board.taken?("3") != true && turn_count == 3
    					"3"
    				else 
    					if board.taken?("2") # turn3
    						if board.taken?("8") != true
    							"8"
    						else 
    							if board.taken?("4") #turn4
    								if board.taken?("6") != true
    									"6"
    								end
    							elsif board.taken?("6") || board.taken?("9")
    								 if board.taken?("4") != true
    								 	"4"
    								 end
    							end
    						end
    					else
    						"2"
    					end
    				end	      						    			
    			elsif board.route = 8
    				if board.taken?("2") != true && turn_count == 3
    					"2"
    				else
    					if board.taken?("3")
    						if board.taken?("7") != true
    							"7"
    						else
    							if board.taken?("4") != true
    								"4"
    							else
    								"6"
    							end
    						end
    					else
    						"3"
    					end
    				end		
    			elsif board.route = 9
    				if board.taken?("3") != true && turn_count == 3
    					"3"
    				else
    					if board.taken?("2") != true
    						"2"
    					else
    						if board.taken?("8") != true
    							"8"
    						else
    							if board.taken?("4")
    								"6"
    							elsif board.taken?("6")
    								"4"
    							else
    								"7"
    							end
    						end
    					end
    				end		
    			end
    		end
    	
    	end    					
  	end


  	def route

  	end


  end
end