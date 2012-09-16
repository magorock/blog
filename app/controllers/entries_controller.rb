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

  def archive
    # return redirect_to collection_url unless params[:id]

    @entries = Entry.find(:all, :order => 'created_at, id')
    @entry_months = @entries.group_by { |e| e.created_at.beginning_of_month }
  end
end
