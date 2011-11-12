class LinesController < ApplicationController
  # GET /lines
  # GET /lines.xml
  def index
    @room = Room.find(params[:room_id])
    @lines = @room.lines.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lines }
    end
  end

  # GET /lines/1
  # GET /lines/1.xml
  def show
    @line = Line.find(params[:id])
	@room = Room.find(params[:room_id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @line }
    end
  end

  # GET /lines/new
  # GET /lines/new.xml
  def new
	@room = Room.find(params[:room_id])
	@line = @room.lines.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @line }
    end
  end

  # GET /lines/1/edit
  def edit
  @room = Room.find(params[:room_id])
	@line = @room.lines.find(params[:id])
  
  end

  # POST /lines
  # POST /lines.xml
  def create
  	@room = Room.find(params[:room_id])
	@line = @room.lines.new(params[:line])


    respond_to do |format|
      if @line.save
        format.html { redirect_to(room_lines_path(@room), :notice => 'Line was successfully created.') }
        format.xml  { render :xml => room_lines_path(@room), :status => :created, :location => @line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lines/1
  # PUT /lines/1.xml
  def update
    @line = Line.find(params[:id])

    respond_to do |format|
      if @line.update_attributes(params[:line])
        format.html { redirect_to(room_lines(@room), :notice => 'Line was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.xml
  def destroy
    @room = Room.find(params[:room_id])

    @line = Line.find(params[:id])
    @line.destroy

    respond_to do |format|
      format.html { redirect_to(room_lines_path(@room)) }
      format.xml  { head :ok }
    end
  end
end
