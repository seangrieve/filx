class FqueuesController < ApplicationController
  before_filter :find_q

  def show
    respond_to do |format|
      format.html
      format.xml { render :xml => @q }
    end
  end

  def update
    # Create an order array that has the entry ids in the 
    # new sort order. sort_order is passed in as a string of
    # ids separated by commas.
    order = params[:sort_order].split(',')

    # Loop through the order array and update the sort column for 
    # each entry row.
    sort = 1
    order.each do |entry_id| 
      entry = Entry.find(entry_id)
      entry.sort = sort
      sort += 1
      entry.save
    end

    render 'show'
  end

  def find_q
    @q = Fqueue.find(params[:id])
  end
end
