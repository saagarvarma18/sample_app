module ApplicationHelper


#Return the title in case it has not yet

   def title 
 	base_title="Ruby on Rails Application"
  	if @title.nil?
	   base_title
	else
	   "#{base_title}|#{@title}"
	end
   end

   def logo
   		image_tag("logo.png", :alt => "Sample App", :class => "round")
   end
end
