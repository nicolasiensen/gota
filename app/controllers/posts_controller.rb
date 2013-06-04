class PostsController < InheritedResources::Base
  has_scope :page, :default => 1

  def index
    index! do |format|
      format.html { render @posts }
    end
  end
end
