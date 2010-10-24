class FqueuesController < ApplicationController
  before_filter :find_q, :except => 'index'

  # Get the first Fqueue object
  def index
    @q = Fqueue.find(:first)
    render 'show'
  end

  # Show the Fqueue object with the given id
  def show
    respond_to do |format|
      format.html
      format.xml { render :xml => @q }
    end
  end

  # Action to update the Fqueue's entry sort order from a GET request
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

    # Since this action is called through ajax and we don't need to 
    # return any data, render nothing
    render :nothing => true
  end

  private

  # Filter method to set the @q attribute to the Fqueue with the current id. 
  def find_q
      @q = Fqueue.find(params[:id])
  end
end
