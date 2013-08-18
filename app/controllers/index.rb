
# Home page
get '/' do
  # Look in app/views/index.erb
  @notes = Note.all
  erb :index
end

# Display list of notes
get '/notes' do
  @notes = Note.all
  erb :index
end

# gets form for new note
get '/notes/new' do

  erb :new
end

# write new note to DB
post '/notes' do
  p params
  new_note = Note.create(params['new'])
  @notes = Note.all
  erb :index  
end

# view one note
get '/notes/:id' do

  @note = Note.find(params[:id])
  erb :show
end

# edit one note
get '/notes/:id/edit' do

  @note = Note.find(params[:id])

  erb :edit
end

# make changes to an existing note
put '/notes/:id' do

  note = Note.find(params[:id])
  note.update(content: params[:content])

  redirect "/notes/#{@note.id}"
end

# delete a note
delete '/notes/:id/delete' do

  note = Note.find(params[:id])
  note.destroy
  
end
