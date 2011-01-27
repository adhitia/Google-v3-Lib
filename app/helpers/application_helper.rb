# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
 include Google
  def show_google_map
    google_map :mapdiv,
      {
      :width => '360px',
      :height => '350px',
      :display => 'inline',
      :action => 'show',
    }
  end


end
