class GithubController < ApplicationController
  def page
    @response = HTTParty.get("https://api.github.com/users/ssrcruz/events",
            :headers => {
              "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
              "User-Agent" => "ssrcruz"})
  end
end
