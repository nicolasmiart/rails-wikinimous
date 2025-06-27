class ConfigurationsController < ApplicationController
  def show
    render json: {
      "settings": {},
      "rules": [
        {
          "patterns": [
            ".*"
          ],
          "properties": {
            "context": "default",
            "pull_to_refresh_enabled": true
          }
        },
        {
          "patterns": [
            "/new$"
          ],
          "properties": {
            "context": "modal",
            "pull_to_refresh_enabled": false
          }
        }
      ]
    }
  end
end
