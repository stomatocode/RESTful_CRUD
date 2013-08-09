
# Home page
get '/' do
  # Look in app/views/index.erb
  erb :index
end

# Display list of notes
get '/list' do

  erb :list
end

# gets form for new note
get '/new_note' do

  erb :new
end

# write new note to DB
post '/write_note' do

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
put '/notes/:id/update' do

  redirect "/notes/#{@note.id}"
end

# delete a note
delete '/notes/:id/trash' do

  redirect '/notes'
end