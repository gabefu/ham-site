require 'rubygems'
require 'sinatra'

i = 0
msg = "No one has left a message yet."

# HTTP 'GET' request
get '/hi' do
	i+=1
	"<html>
		<head> </head>
		<body>
			<script>
				
			</script>
			<p>
				I Did It My Way! #{i} times!
			</p>
			<p>
				Message from previous page view:
			</p>
			<h1>#{msg}</h1>
			<p>Want to respond? Do so below:</p>
			
			<form action='/thing' method='post'>
				<input id='bob' name='msg'></input>
			</form>
		</body>
	</html>"
end
# HTTP 'POST' (forms)
post '/thing' do
	msg = params[:msg]
	p "They told us #{msg}"
	redirect to('/hi')
end