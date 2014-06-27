# Slacui

## Installation

    $ gem build slacui.gemspec
    $ gem install slacui-(VERSION).gem

Set your API auth token to $SLACK_AUTH_TOKEN, see https://api.slack.com/

Ex. `$ echo 'export SLACK_AUTH_TOKEN=YOUR_TOKEN' >> ~/.bashrc`

## Usage

### Channel List

    $ slacui channnels

### Read Channel

    $ slacui read CHANNEL_NAME

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
