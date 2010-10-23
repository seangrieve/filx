class FqueuesController < ApplicationController
  before_filter :find_q

  def show
    respond_to do |format|
      format.html
      format.xml { render :xml => @q }
    end
  end

  def edit
    # Get the sort order array parameter that has the entry ids in 
    # the order that the user selected.
    order = params[:sort_order]

    # Loop through the order array and update the sort column for 
    # each entry row.
    sort = 1
    order.each do |entry_id| 
      entry = Entry.find(entry_id)
      entry.sort = sort
      sort += 1
      entry.save
    end

    render :nothing => true
  end

  private

  def find_q
    @q = Fqueue.find(params[:id])
  end
end
