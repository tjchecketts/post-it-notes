class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
    render partial: "form"
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path
  end

  def update
    @note = Note.find(params[:id])

    if @note.update(note_params)
      redirect_to notes_path
    else  
      render :edit
    end
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else 
      render partial: "form"
    end 
  end 

  private
  def note_params
    params.require(:note).permit(:do, :description)
  end

end
