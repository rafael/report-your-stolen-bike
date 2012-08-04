class ReportsController < ApplicationController

  def index
    if params[:search]
      @reports = Report.search("%#{params[:search]}%")
    else
    @reports = Report.all
    end
  end

  def new
    @report = Report.new 
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    @report = Report.new(params[:report])
    if @report.save
     redirect_to @report, :notice => 'Report created!' 
    else
      render :action => 'new'
    end
  end
end
