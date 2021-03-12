class Users
    include HTTParty

    base_uri ENV["api_url"]

    def get_users
        self.class.get("/users", headers: { 'Content-Type': "application/json" })
    end

    def get_users_by_name(name)
        self.class.get("/users?name=#{name}", headers: { 'Content-Type': "application/json" })
    end

    def get_users_by_email(email)
        self.class.get("/users?email=#{email}", headers: { 'Content-Type': "application/json" })
    end

    def get_users_posts(id)
        self.class.get("/users/#{id}/posts", headers: { 'Content-Type': "application/json" })
    end
end