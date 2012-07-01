class EntriesController < InheritedResources::Base

  def category
    return redirect_to collection_url unless params[:id]

    @category = Category.find(params[:id])
    @entries = @category.entries
  end
  def tag
    return redirect_to collection_url unless params[:id]

    @tag = Tag.find(params[:id])
    @entries = @tag.entries
  end
end
