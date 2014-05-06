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


  # Public : render_avatar(request)
  # Takes an argument (the request in question) and renders an appropriate avatar.
  #
  # If the requestor's Smac Monkey has shipped, but they have not yet posted a photo,
  # when the requestor views the request, their avatar will be a hidden form,
  # prompting them to upload a photo with their smac monkey
  #
  # Example: render_avatar(request)
  # returns <%= image tag with the correct url %>
  def render_avatar(request)
    if !request.after_photo_url.blank?
      render partial: "avatar", locals: { link: request.after_photo_url_url(:thumb) }
    else
      if current_user && current_user.id == request.requestor_id && request.current_status >= 10
        render partial: "upload_photo", locals: { request: request }
      else
        if !request.before_photo_url.blank?
          render partial: "avatar", locals: { link: request.before_photo_url_url(:thumb) }
        else
          render partial: "avatar", locals: { link: "profile.png" }
        end
      end
    end
  end

end
