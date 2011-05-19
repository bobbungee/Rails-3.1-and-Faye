# init client
client = new Faye.Client('http://localhost:9292/faye')

# subscribe to #general
client.subscribe('/general', (message) ->
  alert(message.text)
)

# send something
client.publish('/general', {
  text: 'I just logged on'
})
