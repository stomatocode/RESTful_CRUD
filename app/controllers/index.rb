
# Home page
get '/' do
  # Look in app/views/index.erb
  @notes = Note.all
  erb :index
end

# Display list of notes
get '/notes' do
  @notes = Note.all
  erb :list
end

# gets form for new note
get '/notes/new' do

  erb :new
end

# write new note to DB
post '/notes' do

  erb :list  
end

# view one note
get '/notes/:id' do

  erb :show
end

# edit one note
get '/notes/:id/edit' do

  erb :edit
end

# make changes to an existing note
put '/notes/:id' do

  redirect "/notes/#{@note.id}"
end

# delete a note
delete '/notes/:id' do

  redirect '/notes'
end