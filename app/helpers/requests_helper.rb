module RequestsHelper
  #Public : edit_story
  #Takes an argument, the request's story and edits it for best use in the iframe view - adds h2 tags and reduces size if necessary

  # Example: edit_story(story)
  # story ="So I was taking my dog for a walk and then who knows I don't bam!"
  # returns <h2>So I was taking my dog for a walk and then who knows I don't bam!</h2>
  #
  def edit_story(story)
    #<% edited_story = (req.story).insert(0, "<h2>") << "</h2>
    if story.length > 250
      edited_story = story[0..250].insert(0, "<h2>") << "...</h2>"
    else
      edited_story = story.insert(0, "<h2>") << "</h2>"
    end
    return edited_story
  end
end
